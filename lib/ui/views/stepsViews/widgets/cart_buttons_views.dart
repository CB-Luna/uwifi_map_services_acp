import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;
import 'package:uwifi_map_services_acp/helpers/globals.dart';
import 'package:uwifi_map_services_acp/providers/customer_info_controller.dart';
import 'package:uwifi_map_services_acp/providers/customer_pd_sd_cc_provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_pd_sd_provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_ssn_acp_provider.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/final_popup_acp_not_found.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/final_popup_fail.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/final_popup_success.dart';
import '../../../../../providers/cart_controller.dart';
import '../../../../../providers/steps_controller.dart';
import 'cart_buttons.dart';

styledButton(context) {
  final cartController = Provider.of<Cart>(context);
  final stepsController = Provider.of<StepsController>(context);
  final customerSSNACPController = Provider.of<CustomerSSNACPProvider>(context);
  final customerPDSDController = Provider.of<CustomerPDSDProvider>(context);
  final customerPDSDCCController = Provider.of<CustomerPDSDCCProvider>(context);
  final customerInfoController = Provider.of<CustomerInfoProvider>(context);

  switch (stepsController.currentStep) {
    //Se controla la leyenda del botón del shopping cart, dependiendo la vista actual del proceso.
    case Views.customerInfoView:
      //Se controla la opacidad del botón (que se haga ver habilitado)
      var opacity = 1.0;
      return CartButtons(
          opacity: opacity,
          isVisible: true,
          buttonText: "Checkout | \$30.00",
          function: () {
            if (customerPDSDCCController.sameAsSD) {
              bool boolSSNACP = customerSSNACPController.formValidationSSNACP();
              bool boolPD = customerPDSDController.formValidationPD();
              bool boolSD = stepsController.formValidation();
              bool boolCC = customerPDSDCCController.formValidationCC();
                if (boolPD && boolSD && boolSSNACP && boolCC) {
                  finalPressed(context, customerPDSDController, customerPDSDController, customerPDSDCCController, true);
                }
            } else {
              bool boolSSNACP = customerSSNACPController.formValidationSSNACP();
              bool boolPD = customerPDSDController.formValidationPD();
              bool boolSD = stepsController.formValidation();
              bool boolPAD = customerInfoController.formValidation();
              bool boolCC = customerPDSDCCController.formValidationCC();
              if (boolPD && boolSD && boolSSNACP && boolPAD && boolCC) {
                finalPressed(context, customerPDSDController, customerPDSDController, customerPDSDCCController, false);
              }
            }
          },
          cartContains: cartController.products.isNotEmpty);

    default:
      return const Text("");
  }
}

void finalPressed(BuildContext context, CustomerPDSDProvider controllerPesonalD, CustomerPDSDProvider controllerShippingD, CustomerPDSDCCProvider controllerPaymentD, bool sameAsSD) async {
        try {
          dynamic res;
          var json = {};
          if (sameAsSD) {
            json = {
              "first_name": controllerPesonalD.parsedFNamePD.text,
                "last_name": controllerPesonalD.parsedLNamePD.text,
                "email": controllerPesonalD.parsedEmailPD.text,
                "mobile_phone": controllerPesonalD.parsedPhonePD.text,
                "address": [
                    {
                        "address_1": controllerShippingD.parsedAddress1SD.text,
                        "address_2": null,
                        "zipcode": controllerShippingD.parsedZipcodeSD.text,
                        "city": controllerShippingD.parsedCitySD.text,
                        "state_code": "TX",
                        "type": "Physical",
                        "latitude": controllerShippingD.positionSD?.toJSON()?.lat,
                        "longitude": controllerShippingD.positionSD?.toJSON()?.lng
                    },
                    {
                        "address_1": controllerShippingD.parsedAddress1SD.text,
                        "address_2": null,
                        "zipcode": int.parse(controllerShippingD.parsedZipcodeSD.text),
                        "city": controllerShippingD.parsedCitySD.text,
                        "state_code": "TX",
                        "type": "Billing",
                        "latitude": controllerShippingD.positionSD?.toJSON()?.lat,
                        "longitude": controllerShippingD.positionSD?.toJSON()?.lng
                    }
                ],
                "services": [
                    {
                        "service_id": 1
                    }
                ]
            };
          } else {
            json = {
              "first_name": controllerPesonalD.parsedFNamePD.text,
                "last_name": controllerPesonalD.parsedLNamePD.text,
                "email": controllerPesonalD.parsedEmailPD.text,
                "mobile_phone": controllerPesonalD.parsedPhonePD.text,
                "address": [
                    {
                        "address_1": controllerShippingD.parsedAddress1SD.text,
                        "address_2": null,
                        "zipcode": controllerShippingD.parsedZipcodeSD.text,
                        "city": controllerShippingD.parsedCitySD.text,
                        "state_code": "TX",
                        "type": "Physical",
                        "latitude": controllerShippingD.positionSD?.toJSON()?.lat,
                        "longitude": controllerShippingD.positionSD?.toJSON()?.lng
                    },
                    {
                        "address_1": controllerPaymentD.parsedAddress1BD.text,
                        "address_2": null,
                        "zipcode": int.parse(controllerPaymentD.parsedZipcodeBD.text),
                        "city": controllerPaymentD.parsedCityBD.text,
                        "state_code": "TX",
                        "type": "Billing",
                        "latitude": controllerPaymentD.positionBD?.toJSON()?.lat,
                        "longitude": controllerPaymentD.positionBD?.toJSON()?.lng
                    }
                ],
                "services": [
                    {
                        "service_id": 1
                    }
                ]
            };
          }

          res = await supabase.rpc(
            'create_lead',
            params: {
              "data" : json
            }
          );

          if (res != null) {
            // ignore: use_build_context_synchronously
            showDialog(
              barrierColor: const Color(0x00022963).withOpacity(0.40),
              barrierDismissible: false,
              context: context,
              builder: (_) {
                return const FinalPopupSuccess();
              },
            );
          } else {
            // ignore: use_build_context_synchronously
            showDialog(
              barrierColor: const Color(0x00022963).withOpacity(0.40),
              barrierDismissible: false,
              context: context,
              builder: (_) {
                return const FinalPopupFail();
              },
            );
          }
          
        } catch (error) {
          print("Error on Final Pressed: '$error'");
          // ignore: use_build_context_synchronously
          showDialog(
              barrierColor: const Color(0x00022963).withOpacity(0.40),
              barrierDismissible: false,
              context: context,
              builder: (_) {
                return const FinalPopupFail();
              },
            );
        }
  }
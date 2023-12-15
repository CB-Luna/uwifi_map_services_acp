import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_pd_sd_provider.dart';
import 'package:uwifi_map_services_acp/providers/steps_controller.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/inputs/custom_inputs.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/custom_drop_down.dart';

class Step3ShippingDetailsForm extends StatefulWidget {
  const Step3ShippingDetailsForm({Key? key}) : super(key: key);

  @override
  State<Step3ShippingDetailsForm> createState() => _Step3ShippingDetailsFormState();
}

class _Step3ShippingDetailsFormState extends State<Step3ShippingDetailsForm> {
  @override
  Widget build(BuildContext context) {
    final customerPDSDController = Provider.of<CustomerPDSDProvider>(context);
    final stepsController = Provider.of<StepsController>(context);
    final validCharacters = RegExp(r'^[a-zA-Z\- ]+$');
    final zipcodeCharacters = RegExp(r'^[0-9\-() ]+$');
    var zipcodeFormat = MaskTextInputFormatter(
      mask: '######',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    final isMobile = MediaQuery.of(context).size.width < 1024 ? true : false;

    return Container(
      width: 1400,
      height: 250,
      decoration: BoxDecoration(
        color: colorInversePrimary,
        boxShadow: const [
          BoxShadow(
            blurRadius: 15,
            spreadRadius: -5,
            color: colorBgB,
            offset: Offset(0, 15),
          )
        ],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Container(
            width: 1400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              color: colorPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.local_shipping_outlined,
                            color: colorInversePrimary,
                            size: isMobile ? 25 : 40,
                          ),
                        ),
                        Text(
                          'Step 3: Shipping Details',
                          style: TextStyle(
                            color: colorInversePrimary,
                            fontSize: isMobile ? 14 : 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: Form(
              key: stepsController.formKey,
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TextFormField(
                            /// VARIABLE STORAGE
                            controller: customerPDSDController.parsedAddress1SD,
      
                            ///VALIDATION TRIGGER
                            // initialValue: dir,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            keyboardType: TextInputType.phone,
                            decoration: CustomInputs().formInputDecoration(
                                label: 'Address Line 1*',
                                icon: Icons.house_outlined,
                                maxHeight: 55),
                            style: const TextStyle(
                              color: colorPrimaryDark,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a valid address';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextFormField(
                            /// VARIABLE STORAGE
                            controller: customerPDSDController.parsedAddress2SD,
      
                            ///VALIDATION TRIGGER
                            // initialValue: dir,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            keyboardType: TextInputType.phone,
                            decoration: CustomInputs().formInputDecoration(
                                label: 'Address Line 2',
                                icon: Icons.house_outlined,
                                maxHeight: 55),
                            style: const TextStyle(
                              color: colorPrimaryDark,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: TextFormField(
                            /// VARIABLE STORAGE
                            controller: customerPDSDController.parsedZipcodeSD,
      
                            ///VALIDATION TRIGGER
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            decoration: CustomInputs().formInputDecoration(
                                label: 'Zipcode*',
                                icon: Icons.other_houses_outlined,
                                maxHeight: 55),
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(5),
                              zipcodeFormat
                            ],
                            validator: (value) {
                              return (zipcodeCharacters
                                          .hasMatch(value ?? '') &&
                                      value?.length == 5)
                                  ? null
                                  : 'Please enter a valid zipcode';
                            },
                            style: const TextStyle(
                              color: colorPrimaryDark,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: TextFormField(
                            /// VARIABLE STORAGE
                            controller: customerPDSDController.parsedCitySD,
      
                            ///VALIDATION TRIGGER
                            // initialValue: dir,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            obscureText: false,
                            keyboardType: TextInputType.phone,
                            decoration: CustomInputs().formInputDecoration(
                                label: 'City*',
                                icon: Icons.house_outlined,
                                maxHeight: 55),
                            style: const TextStyle(
                              color: colorPrimaryDark,
                            ),
                            validator: (value) {
                              return validCharacters.hasMatch(value ?? '')
                                  ? null
                                  : 'Please enter a City';
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: CustomDropDown(
                            validator: (value) {
                              return (value == "" || value == null)
                                ? 'Please select a state.'
                                : null;
                            },
                            maxHeight: 55,
                            icon: Icons.house_outlined,
                            label: 'State*',
                            width: double.infinity,
                            list: customerPDSDController.stateCodes.values.toList(),
                            dropdownValue: customerPDSDController.parsedStateSD.text == "" ? null : 
                              customerPDSDController.parsedStateSD.text,
                            onChanged: (newState) {
                              if (newState == null) return;
                              customerPDSDController.selectStateUpdateSD(newState);
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
            )),
          ),
        ],
      ),
    );
  }
}

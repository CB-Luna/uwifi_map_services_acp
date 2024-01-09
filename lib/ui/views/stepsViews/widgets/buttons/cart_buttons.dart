import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/providers/tracking_provider.dart' as track;
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import '../../../../../providers/steps_controller.dart';

//Pendiente de separar los botones

class CartButtons extends StatelessWidget {
  final double opacity;
  final bool isVisible;
  final String buttonText;
  final Color textColor;
  final Color color;
  final bool cartContains;
  final Function? function;

  const CartButtons(
      {Key? key,
      required this.opacity,
      required this.isVisible,
      required this.buttonText,
      this.color = colorSecondary,
      this.textColor = colorInversePrimary,
      required this.cartContains,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stepsController = Provider.of<StepsController>(context);

    final tracking = Provider.of<track.TrackingProvider>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: isBackPossible(stepsController),
          child: Flexible(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(width: 2.0, color: colorPrimary),
                  backgroundColor: textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: const Size.fromHeight(50)),
              onPressed: () {
                // if (customerController.customerInfo.customerRep != "") {
                //   stepsController.repCurrentStep =
                //       RepViews.values[stepsController.repCurrentStep.index - 1];
                // } else {
                  stepsController.currentStep =
                      Views.values[stepsController.currentStep.index - 1];

                  tracking.setView =
                      track.Views.values[tracking.currentView.index - 1];
                // }
                stepsController.changeStep(stepsController.currentStep);
              },
              child: Text("Back",
                  style: GoogleFonts.workSans(
                      height: 1.5,
                      fontSize: 14,
                      color: colorPrimary,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.2)),
            ),
          ),
        ),
        SizedBox(
            width: isVisible && isBackPossible(stepsController)
                ? 15.0
                : 0.0),
        Visibility(
          visible: isVisible,
          child: Flexible(
            child: Opacity(
              opacity: opacity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    backgroundColor: color,
                    minimumSize: const Size.fromHeight(50)),
                onPressed: () => {
                  if (stepsController.currentStep ==
                          Views.customerInfoView &&
                      (!stepsController.formValidation() ||
                          !stepsController.promoCheckFlag))
                    {}
                  else
                    {
                      tracking.changeViewIndex(),
                    },
                  stepsController.validateStep(cartContains, context),
                  if (function != null) function!()
                },
                child: Text(buttonText,
                    style: GoogleFonts.workSans(
                        height: 1.5,
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.2)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  isBackPossible(stepsController) {
    bool isPossible = false;
      isPossible =
          stepsController.currentStep == Views.customerInfoView ? false : true;
    return isPossible;
  }
}

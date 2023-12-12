import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../../../../providers/popup_controller.dart';
import '../../../../buttons/custom_outlined_button.dart';
import '../../../../inputs/custom_radio_button.dart';

class LocationStep extends StatelessWidget {
  const LocationStep({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool mobile = size.width < 1024 ? true : false;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Please, select a location:',
          style: GoogleFonts.poppins(
            fontSize: mobile ? 20 : 30,
            height: 1.5,
            color: const Color(0xff001E4D),
            fontWeight: FontWeight.w700,
          ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Consumer<PopupController>(builder: (_, controller, ___) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRadioButton(
                    text: 'Crystal Beach',
                    icon: Icons.looks_one_rounded,
                    value: Location.cry,
                    function: controller.setLocation,
                    groupValue: controller.location,
                    width: 110),
                mobile ? const Spacer() : const SizedBox(width: 50),
                CustomRadioButton(
                    text: 'Midland - Odessa',
                    icon: Icons.looks_two_rounded,
                    value: Location.ode,
                    function: controller.setLocation,
                    groupValue: controller.location,
                    width: 110),
                mobile ? const Spacer() : const SizedBox(width: 50),
                CustomRadioButton(
                    text: 'Smithville',
                    icon: Icons.looks_3_rounded,
                    value: Location.smi,
                    function: controller.setLocation,
                    groupValue: controller.location,
                    width: 110),
              ],
            ),
          );
        }),
        const SizedBox(height: 30),
        Consumer<PopupController>(builder: (_, controller, ___) {
          return CustomOutlinedButton(
            onPressed: () {
              controller.customerInfo.locationGroup = controller.location.name;
              controller.changeStep();
            },
            text: 'Next',
            bgColor: const Color(0xFFD20030),
          );
        }),
      ],
    );
  }
}

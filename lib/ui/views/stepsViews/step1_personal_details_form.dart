import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:uwifi_map_services_acp/providers/customer_shipping_controller.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/inputs/custom_inputs.dart';

class Step1PersonalDetailsForm extends StatefulWidget {
  const Step1PersonalDetailsForm({Key? key})
      : super(key: key);

  @override
  State<Step1PersonalDetailsForm> createState() => _Step1PersonalDetailsFormState();
}

class _Step1PersonalDetailsFormState extends State<Step1PersonalDetailsForm> {
  TextEditingController number = TextEditingController(text:"");
  TextEditingController ccv = TextEditingController(text:"");
  TextEditingController date = TextEditingController(text:"");
  TextEditingController cardName = TextEditingController(text:"");
  bool isCvvFocused = false;
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<CustomerShippingInfo>(context);
    final validCharacters = RegExp(r'^[a-zA-Z\- ]+$');
    final phoneCharacters = RegExp(r'^[0-9\-() ]+$');
    // final zcode = widget.zipcode.toString();
    var phoneFormat = MaskTextInputFormatter(
      mask: '(###) ###-####',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    final isMobile = MediaQuery.of(context).size.width < 1024 ? true : false;

    

    return Column(
      children: [
        Container(
          width: 1400,
          height: 260,
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
                  padding: const EdgeInsets.all(15.0),
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
                                Icons.location_history_outlined,
                                color: colorInversePrimary,
                                size: isMobile ? 25 : 40,
                              ),
                            ),
                            Text(
                              'Step 1: Personal Details',
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
                    key: controller.formKeyPD,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      /// VARIABLE STORAGE
                                      controller: controller.parsedFNamePD,
                                      onChanged: (value) {
                                        controller.activeNotifyListeners();
                                      },
                                      ///VALIDATION TRIGGER
                                      autovalidateMode: AutovalidateMode
                                          .onUserInteraction,
                                      autocorrect: false,
                                      obscureText: false,
                                      keyboardType: TextInputType.name,
                                      decoration: CustomInputs()
                                          .formInputDecoration(
                                              label: 'First Name*',
                                              icon: Icons.person_outlined,
                                              maxHeight: 55),

                                    validator: (value) {
                                      return validCharacters
                                              .hasMatch(value ?? '')
                                          ? null
                                          : 'Please enter your name';
                                    },
                                    style: const TextStyle(
                                      color: colorPrimaryDark,
                                    ),
                                  ),
                                  ),
                                  const SizedBox(width: 15),
                                  Expanded(
                                    child: TextFormField(
                                      /// VARIABLE STORAGE
                                      controller: controller.parsedLNamePD,
                                      onChanged: (value) {
                                        controller.activeNotifyListeners();
                                      },
                                      ///VALIDATION TRIGGER
                                      autovalidateMode: AutovalidateMode
                                          .onUserInteraction,
                                      autocorrect: false,
                                      obscureText: false,
                                      keyboardType: TextInputType.name,
                                      decoration: CustomInputs()
                                          .formInputDecoration(
                                              label: 'Last Name*',
                                              icon: Icons.person_outlined,
                                              maxHeight: 55),

                                    validator: (value) {
                                      return validCharacters
                                              .hasMatch(value ?? '')
                                          ? null
                                          : 'Please enter your name';
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
                                    controller: controller.parsedPhonePD,

                                    ///VALIDATION TRIGGER
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    obscureText: false,
                                    keyboardType: TextInputType.phone,
                                    decoration: CustomInputs()
                                        .formInputDecoration(
                                            label: 'Phone Number*',
                                            icon: Icons.phone_outlined,
                                            maxHeight: 55),

                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(14),
                                      phoneFormat
                                    ],
                                    validator: (value) {
                                      return (phoneCharacters
                                                  .hasMatch(value ?? '') &&
                                              value?.length == 14)
                                          ? null
                                          : 'Please enter a valid phone number';
                                    },
                                    style: const TextStyle(
                                      color: colorPrimaryDark,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: TextFormField(
                                    /// VARIABLE STORAGE
                                    controller: controller.parsedEmailPD,

                                    ///VALIDATION TRIGGER
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    obscureText: false,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: CustomInputs()
                                        .formInputDecoration(
                                            label: 'E-mail Address*',
                                            icon: Icons.mail_outlined,
                                            maxHeight: 55),

                                    validator: (value) {
                                      String pattern =
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      RegExp regExp = RegExp(pattern);
                                      return regExp.hasMatch(value ?? '')
                                          ? null
                                          : 'Please enter a valid e-mail address';
                                    },
                                    style: const TextStyle(
                                      color: colorPrimaryDark,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

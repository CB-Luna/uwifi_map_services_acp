import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_ssn_acp_provider.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/inputs/custom_inputs.dart';

class Step1ACPSSNForm extends StatefulWidget {
  const Step1ACPSSNForm({Key? key}) : super(key: key);

  @override
  State<Step1ACPSSNForm> createState() => _Step1ACPSSNFormState();
}

class _Step1ACPSSNFormState extends State<Step1ACPSSNForm> {
  TextEditingController number = TextEditingController(text:"");
  TextEditingController ccv = TextEditingController(text:"");
  TextEditingController date = TextEditingController(text:"");
  TextEditingController cardName = TextEditingController(text:"");
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    final customerSSNACPController = Provider.of<CustomerSSNACPProvider>(context);
    final acpCharacters = RegExp(r'\d{6}-\d{4}');
    final ssn4Characters = RegExp(r'-\d{4}');
    var acpFormat = MaskTextInputFormatter(
      mask: '######-####',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    var ssn4Format = MaskTextInputFormatter(
      mask: '-####',
      filter: {'#': RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    final isMobile = MediaQuery.of(context).size.width < 1024 ? true : false;
    return Column(
      children: [
        Container(
              width: 1400,
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
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30)),
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
                                      Icons.numbers_outlined,
                                      color: colorInversePrimary,
                                      size: isMobile ? 25 : 40,
                                    ),
                                  ),
                                  Text(
                                    customerSSNACPController.acpNumberR ? 
                                      'Step 1: SSN' :
                                      'Step 1: ACP Number',
                                    style: TextStyle(
                                      color: colorInversePrimary,
                                      fontSize: isMobile ? 14 : 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "I don't remember my ACP Number",
                                    style: GoogleFonts.workSans(
                                    fontSize: isMobile ? 12 : 18,
                                    color: colorInversePrimary,
                                    fontWeight: FontWeight.normal)),
                                  Checkbox(
                                    side: const BorderSide(
                                      color: colorBgWhite,
                                      width: 2.0
                                    ),
                                    value: customerSSNACPController.acpNumberR,
                                    onChanged: (bool? value) {
                                      customerSSNACPController.changeRemeberACPNumber();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Form(
                        key: customerSSNACPController.formKeySSNACP,
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
                                          controller: customerSSNACPController.acpNumberR ?
                                          customerSSNACPController.ssn4LD :
                                           customerSSNACPController.acpNumber,
                                          ///VALIDATION TRIGGER
                                          autovalidateMode: AutovalidateMode
                                              .onUserInteraction,
                                          autocorrect: false,
                                          obscureText: false,
                                          keyboardType: TextInputType.name,
                                          decoration: CustomInputs()
                                              .formInputDecoration(
                                                  label: customerSSNACPController.acpNumberR ? 
                                                  '4 Last Digits*' :
                                                  'Number*',
                                                  icon: Icons.numbers_outlined,
                                                  maxHeight: 55),
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(customerSSNACPController.acpNumberR ? 5 : 11),
                                          customerSSNACPController.acpNumberR ? ssn4Format : acpFormat
                                        ],
                                        validator: (value) {
                                          return customerSSNACPController.acpNumberR ? 
                                            (ssn4Characters
                                                  .hasMatch(value ?? '')
                                              ? null
                                              : 'Please enter your last 4 SSN digits')
                                            :
                                            (acpCharacters
                                                  .hasMatch(value ?? '')
                                              ? null
                                              : 'Please enter your ACP number');
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
                  ]),
            ),
      ],
    );
  }
}

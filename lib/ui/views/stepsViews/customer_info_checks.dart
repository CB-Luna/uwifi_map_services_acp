import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_ssn_acp_provider.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';

class PromoCheckbox extends StatefulWidget {
  const PromoCheckbox({Key? key}) : super(key: key);

  @override
  PromoCheckboxState createState() => PromoCheckboxState();
}

class PromoCheckboxState extends State<PromoCheckbox> {
  bool emailCheckbox = true;
  bool smsCheckbox = true;

  @override
  Widget build(BuildContext context) {
    final customerSSNACPController =
        Provider.of<CustomerSSNACPProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  'I would like to receive promotional messages from U-wifi by E-mail. You can unsubscribe at any time.',
                  style: GoogleFonts.workSans(
                  fontSize: 15,
                  color: colorPrimary,
                  fontWeight: FontWeight.normal)),
              ),
              Checkbox(
                side: const BorderSide(
                  color: colorPrimary,
                  width: 2.0
                ),
                value: emailCheckbox,
                checkColor: colorBgWhite,
                onChanged: (emailyes) {
                  setState(() {
                    emailCheckbox = emailyes!;
                  });
                  customerSSNACPController.promoInfobyEmail = emailCheckbox;
                },
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  'I would like to receive promotional messages from U-wifi by SMS.\n\n*Message and data rates may apply to receiving these messages.\n\n*Reply with STOP at any time to opt-out from future messages.',
                  style: GoogleFonts.workSans(
                  fontSize: 15,
                  color: colorPrimary,
                  fontWeight: FontWeight.normal)),
              ),
              Checkbox(
                side: const BorderSide(
                  color: colorPrimary,
                  width: 2.0
                ),
                value: smsCheckbox,
                checkColor: colorBgWhite,
                onChanged: (smsyes) {
                  setState(() {
                    smsCheckbox = smsyes!;
                  });
                  customerSSNACPController.promoInfoibySMS = smsCheckbox;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
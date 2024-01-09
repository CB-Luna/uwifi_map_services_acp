import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/buttons/cart_buttons_views.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/buttons/custom_outlined_button.dart';

class BottomCartSectionWidget extends StatelessWidget {
  const BottomCartSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        width: 900,
        height: 200,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1.00, -0.04),
            end: Alignment(1, 0.04),
            colors: [colorPrimaryLight, colorPrimaryDark],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: TextFormField(
                            // validator: (value) {
                            // },
                            decoration: InputDecoration(
                              labelText: 'Coupon Code',
                              labelStyle: TextStyle(
                                  color: Color(0xFF8D8D8D),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              hintText: 'Coupon Code...',
                              hintStyle: TextStyle(
                                  color: Color(0xFF8D8D8D),
                                  fontSize: 16,
                                  fontFamily: 'Lexend',
                                  fontWeight: FontWeight.w400,
                                  height: 0.09,
                                ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: colorBgWhite,
                            ),
                            style: TextStyle(
                              color: colorPrimary,
                              fontSize: 16,
                              fontFamily: 'Lexend',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                      ),
                      const SizedBox(
                        width: 125,
                        height: 30,
                        child: CustomOutlinedButton(
                          text: "Apply Coupon",
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'SECURE PAYMENTS PROVIDED BY',
                    style: TextStyle(
                      color: colorBorder,
                      fontSize: 9.57,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      height: 0.16,
                      letterSpacing: 0.80,
                    ),
                  ),
                  const Row(
                    children: [
                      LogosPaymentsWidget(
                        isLastOne: false,
                        source: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/mastercard.png?t=2024-01-09T03%3A45%3A54.326Z"
                      ),
                      LogosPaymentsWidget(
                        isLastOne: false,
                        source: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/visa.png"
                      ),
                      LogosPaymentsWidget(
                        isLastOne: false,
                        source: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/visa.png"
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RowSummaryWidget(
                    firstString: "Subtotal",
                    secondString: "\$497.00",
                    thirdString: "Items (3)",
                  ),
                   const RowSummaryWidget(
                    firstString: "Taxes",
                    secondString: "\$0.00",
                    thirdString: "",
                  ),
                   const RowSummaryWidget(
                    firstString: "Shipping Cost",
                    secondString: "\$0.00",
                    thirdString: "",
                  ),
                  SizedBox (
                    width: 190,
                    child: styledButton(context)),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}

class RowSummaryWidget extends StatelessWidget {
  final String firstString;
  final String secondString;
  final String thirdString;

  const RowSummaryWidget({
    super.key, 
    required this.firstString, 
    required this.secondString, 
    required this.thirdString,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          firstString,
          style: const TextStyle(
            color: colorInversePrimary,
            fontSize: 12,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
            height: 0.09,
          ),
        ),
        const SizedBox(width: 5,),
        Text(
          secondString,
          style: const TextStyle(
            color: colorInversePrimary,
            fontSize: 16,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w700,
            height: 0.07,
          ),
        ),
        const SizedBox(width: 5,),
        Text(
          thirdString,
          style: const TextStyle(
            color: colorInversePrimary,
            fontSize: 12,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w200,
            height: 0.07,
          ),
        )
      ],
    );
  }
}

class LogosPaymentsWidget extends StatelessWidget {
  final String source;
  final bool isLastOne;

  const LogosPaymentsWidget({
    super.key, 
    required this.source, 
    required this.isLastOne,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 45.00,
          height: 25.00,
          decoration: ShapeDecoration(
            color: colorBgWhite,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.80, color: colorBorder),
              borderRadius: BorderRadius.circular(4.78),
            ),
          ),
          child: Center(
            child: Image.network(
              source,
              fit: BoxFit.fill,
            ),
          ),
        ),
        isLastOne ? 
        const SizedBox()
        :
        const SizedBox(width: 5,)
      ],
    );
  }
}
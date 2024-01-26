import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';

class HeaderCartSectionWidget extends StatelessWidget {
  const HeaderCartSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.05,
        padding: const EdgeInsets.only(bottom: 5),
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 2, color: colorBorder),
            ),
        ),
        child: const Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                Text(
                    'Cart Summary',
                    style: TextStyle(
                        color: colorBgDark,
                        fontSize: 26.99,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w600,
                    ),
                ),
            ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/cart.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/extras_section_widget.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/header_cart_section_widget.dart';

class CartSummaryWidget extends StatelessWidget {
  const CartSummaryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isMobile = size.width < 1024 ? true : false;
    return SizedBox(
      width: MediaQuery.of(context).size.width * (isMobile ? 0.9 : 0.5),
      child: const Column(
        children: [
          HeaderCartSectionWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: CartWidget(),
          ),
          ExtrasSection(),
        ],
      ),
    );
  }
}
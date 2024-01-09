import 'package:badges/badges.dart' as badge;
import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/data/constants.dart';
import 'package:uwifi_map_services_acp/providers/cart_controller.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/inputs/custom_inputs.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/bottom_cart_section_widget.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/column_builder.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/selector_count_item_widget.dart';
import '../../../../providers/remote/boxes_behavior_controller.dart';
import 'buttons/cart_buttons_views.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartController = Provider.of<Cart>(context);
    final cartBehavior = Provider.of<BoxesBehavior>(context);
    final scrollController =  ScrollController();

    final size = MediaQuery.of(context).size;
    final bool mobile = size.width < 1024 ? true : false;

    return cartBehavior.isCartVisible
        ? Visibility(
            visible: cartBehavior.isCartVisible,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1.5, color: colorBorder),
                  borderRadius: BorderRadius.circular(13.53),
                ),
              ),
              child: Consumer<Cart>(
                builder: (BuildContext context, Cart cart, Widget? child) {
                  return Column(children: <Widget>[
                    SelectorCountItemWidget(
                      title: "5G Home Internet Plan", 
                      description: "5G Home Internet Plan", 
                      price: "30.00", 
                      image: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/5G%20Home%20Internet%20Plan.png?t=2024-01-08T22%3A03%3A43.207Z", 
                      counter: 1,
                      isRequired: true,
                    ),
                    Expanded(
                      child: Scrollbar(
                        controller: scrollController,
                        thumbVisibility: true,
                        child: SingleChildScrollView(
                        controller: scrollController,
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                                            
                            ColumnBuilder(
                              itemCount: 2,
                              itemBuilder: (BuildContext context, int index) {
                        
                                return SelectorCountItemWidget(
                                  isRequired: false,
                                  title: "U-wifi Hat", 
                                  description: "Black Baseball style hat, with chrome color U-wifi Logo", 
                                  price: "11.99", 
                                  image: "https://nsrprlygqaqgljpfggjh.supabase.co/storage/v1/object/public/assets/Black%20cap.png?t=2024-01-08T23%3A23%3A05.776Z", 
                                  counter: 0
                                );
                              },
                            ),
                                            
                          ],
                        )),
                      ),
                    ),

                    const BottomCartSectionWidget(),
                  ]);
                },
              ),
            ),
          )
        : Visibility(
            visible: !cartBehavior.isCartVisible,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClayContainer(
                spread: 6,
                color: colorPrimary,
                parentColor: colorBgBlack,
                height: 45,
                width: 45,
                depth: 40,
                borderRadius: 25,
                curveType: CurveType.concave,
                child: GestureDetector(
                  onTap: () {
                    cartBehavior.changeCartVisibility();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: badge.Badge(
                      badgeContent: Text(
                          cartController.generalCartCounter.toString(),
                          style: const TextStyle(color: colorInversePrimary)),
                      showBadge:
                          cartController.generalCartCounter == 0 ? false : true,
                      badgeColor: colorPrimary,
                      position: badge.BadgePosition.bottomStart(),
                      elevation: 4,
                      child: const Icon(
                        Icons.add_shopping_cart,
                        color: colorInversePrimary,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

class CartTab extends StatelessWidget {
  const CartTab({
    Key? key,
    required this.title,
    this.widget,
  }) : super(key: key);

  final String title;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    Color color = colorsTheme(context).onSurface;
    return Container(
      alignment: Alignment.centerLeft,
      height: 30,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color.withOpacity(0), color.withOpacity(0.25)]),
          border: Border(bottom: BorderSide(color: color, width: 1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: tagTitleStyle(context, color: color)),
            if (widget != null) widget!
          ],
        ),
      ),
    );
  }
}

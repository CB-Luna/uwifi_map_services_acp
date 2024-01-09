import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_ssn_acp_provider.dart';
import 'package:uwifi_map_services_acp/providers/tracking_provider.dart' as track;
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/customer_info_checks.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/cart.dart';
import 'package:uwifi_map_services_acp/ui/views/stepsViews/widgets/header_cart_section_widget.dart';

import '../../../data/constants.dart';
import '../../../providers/remote/boxes_behavior_controller.dart';
import '../../../providers/steps_controller.dart';

import 'widgets/navigation_bar_mobile.dart';
import 'widgets/top_bar.dart';

class SalesLayout extends StatelessWidget {

  SalesLayout({
    Key? key,
  }) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // String? custAddress = "${customerInfo.street}, ${customerInfo.city} ${customerInfo.state} ${customerInfo.zipcode}";


    return MultiProvider(
        providers: [
          ChangeNotifierProvider<StepsController>(
            create: (_) => StepsController(),
          ),
          ChangeNotifierProvider<BoxesBehavior>(
            create: (_) =>
                BoxesBehavior(mobile(context)),
          ),
        ],
        builder: (context, child) {
          final customerSSNACPController = Provider.of<CustomerSSNACPProvider>(context);
          final stepsController = Provider.of<StepsController>(context);

          return Scaffold(
            resizeToAvoidBottomInset: false,
            bottomNavigationBar: mobile(context)
                ? NavigationMobile(customerSSNACPController: customerSSNACPController)
                : null,
            key: _scaffoldKey,
            backgroundColor: colorBgWhite,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TopBar(),
                Expanded(
                  child: Row(
                    //Con este parámatro se ajusta la posición del Shopping Cart
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    //Despliegue de contenido de página en Stepper
                    Flexible(
                        child: stepsController
                          .changeStep(stepsController.currentStep)),

                    //Despliegue de Shopping Cart
                    if (!mobile(context)) const Flexible(
                      child: Column(
                        children: [
                          HeaderCartSectionWidget(),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: CartWidget(),
                          ),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
          );
        });
  }
}

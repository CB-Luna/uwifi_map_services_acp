import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uwifi_map_services_acp/data/repositories_impl/suggestions_repository_impl.dart';
import 'package:uwifi_map_services_acp/helpers/constants.dart';
import 'package:uwifi_map_services_acp/helpers/globals.dart';
import 'package:uwifi_map_services_acp/providers/cart_controller.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:uwifi_map_services_acp/providers/customer_pd_sd_provider.dart';
import 'package:uwifi_map_services_acp/providers/customer_ssn_acp_provider.dart';
import 'package:uwifi_map_services_acp/providers/remote/suggestions_api.dart';
import 'package:uwifi_map_services_acp/router/router.dart';
import 'package:uwifi_map_services_acp/services/navigation_service.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uuid/uuid.dart';

import 'providers/tracking_provider.dart';

void main() async {
  Flurorouter.configureRoutes();
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  supabaseAuth = SupabaseClient(supabaseUrl, anonKey, schema: 'auth');

  await Supabase.initialize(url: supabaseUrl, anonKey: anonKey);
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Provider para cambio de pantallas
        ChangeNotifierProvider<TrackingProvider>(
          create: (_) {
            var uuidConstruct = const Uuid();
            var uuid = uuidConstruct.v1();

            return TrackingProvider(uuid);
          },
        ),
        //Provider para carrito de compras
        ChangeNotifierProvider<Cart>(create: (_) => Cart()),
        //Provider para customer Personal Details y Shipping Details
        //Provider para llenado automático de Address
        ChangeNotifierProvider<CustomerPDSDProvider>(
          create: (_) => CustomerPDSDProvider(
              SuggestionsRepositoryImpl(
                SuggestionsAPI(Dio()),
              ),
              UniqueKey(),
              notify: false),
        ),
        //Provider para customer SSN Y ACP
        ChangeNotifierProvider<CustomerSSNACPProvider>(
          create: (_) => CustomerSSNACPProvider(
          ),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'U-wifi Map Services ACP',
        debugShowCheckedModeBanner: false,
        initialRoute: Flurorouter.rootRoute,
        onGenerateRoute: Flurorouter.router.generator,
        navigatorKey: NavigationService.navigatorKey,
        theme: defaultTheme);
  }
}

// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

import 'package:app_links/src/app_links_web.dart';
import 'package:camera_web/camera_web.dart';
import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:flutter_credit_card/src/plugin/flutter_credit_card_web.dart';
import 'package:printing/printing_web.dart';
import 'package:restart_app/restart_web.dart';
import 'package:share_plus_web/share_plus_web.dart';
import 'package:shared_preferences_web/shared_preferences_web.dart';
import 'package:sign_in_with_apple_web/sign_in_with_apple_web.dart';
import 'package:url_launcher_web/url_launcher_web.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
  AppLinksPluginWeb.registerWith(registrar);
  CameraPlugin.registerWith(registrar);
  FilePickerWeb.registerWith(registrar);
  FlutterCreditCardWeb.registerWith(registrar);
  PrintingPlugin.registerWith(registrar);
  RestartWeb.registerWith(registrar);
  SharePlusPlugin.registerWith(registrar);
  SharedPreferencesPlugin.registerWith(registrar);
  SignInWithApplePlugin.registerWith(registrar);
  UrlLauncherPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}

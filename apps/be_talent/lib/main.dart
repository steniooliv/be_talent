import 'package:be_talent/src/app_dependencies.dart';
import 'package:be_talent/src/app_widget.dart';
import 'package:be_talent/src/core/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';

void main(_, AppConfig config) async {
  WidgetsFlutterBinding.ensureInitialized();

  systemOverlayConfig();

  AppDependencies.setupDependencies();

  await initializeDateFormatting('pt_BR', null);

  runApp(AppWidget());
}

void systemOverlayConfig() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [
      SystemUiOverlay.top,
    ],
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
  );
}

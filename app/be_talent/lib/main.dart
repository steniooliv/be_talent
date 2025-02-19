import 'package:be_talent/src/app_widget.dart';
import 'package:be_talent/src/core/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(_, AppConfig config) {
  WidgetsFlutterBinding.ensureInitialized();

  systemOverlayConfig();

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

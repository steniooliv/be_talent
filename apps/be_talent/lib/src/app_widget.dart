import 'package:be_talent/src/app_routes.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResolutionAppWidget(
      child: MaterialApp.router(
        title: 'Be Talent',
        theme: DefaultTheme.light,
        routerConfig: AppRoutes.routes,
      ),
    );
  }
}

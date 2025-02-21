import 'package:design_system/design_system.dart';
import 'package:ds_example/src/app_routes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResolutionAppWidget(
      child: MaterialApp(
        theme: DefaultTheme.light,
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.getRoutes(),
        initialRoute: '/',
      ),
    );
  }
}

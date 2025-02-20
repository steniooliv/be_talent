import 'package:design_system/core/ui/widgets/resolution_app_widget.dart';
import 'package:ds_example/src/app_routes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResolutionAppWidget(
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Helvetica Neue',
          dividerColor: Colors.black26,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            surface: Colors.white,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.getRoutes(),
        initialRoute: '/',
      ),
    );
  }
}

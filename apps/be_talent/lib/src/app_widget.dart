import 'package:be_talent/src/features/splash/view/pages/splash_page.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResolutionAppWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            surface: Colors.white,
          ),
        ),
        home: SplashPage(),
      ),
    );
  }
}

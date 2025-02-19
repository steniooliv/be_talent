import 'dart:developer';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
    ).then((value) {
      log('navigate');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BeColors.primary,
      body: Center(
        child: BeImage.imageAsset(
          height: 39,
          imagePath: 'assets/images/png/logo.png',
        ),
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeeSnackBarWidget {
  EmployeeSnackBarWidget._();

  static void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: BeColors.primary,
        content: BeText.headline3(
          'Esta funcionalidade estará disponível em breve.',
          color: BeColors.white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

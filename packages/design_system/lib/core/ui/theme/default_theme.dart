import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DefaultTheme {
  DefaultTheme._();

  static final light = ThemeData(
    fontFamily: 'Helvetica Neue',
    dividerColor: Colors.black26,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      surface: Colors.white,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: BeColors.gray05,
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      isDense: true,
    ),
  );
}

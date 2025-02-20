import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BeTextStyles {
  BeTextStyles._();

  static final headline1 = TextStyle(
    fontFamily: 'Helvetica Neue Medium',
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    height: 1.22.h,
    color: BeColors.black,
  );

  static final headline2 = TextStyle(
    fontFamily: 'Helvetica Neue Medium',
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    height: 1.22.h,
    color: BeColors.black,
  );

  static final headline3 = TextStyle(
    fontFamily: 'Helvetica Neue',
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    height: 1.22.h,
    color: BeColors.black,
  );

  static final badge = TextStyle(
    fontFamily: 'Inter',
    fontVariations: [
      FontVariation.weight(700),
    ],
    fontSize: 10.sp,
    height: 1.2.h,
    color: BeColors.black,
  );
}

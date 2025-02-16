import 'package:flutter/material.dart';

class BeShadow {
  BeShadow._();

  static const shadow1 = BoxShadow(
    color: Color(0x33000000),
    offset: Offset(0, 1),
    spreadRadius: 0,
    blurRadius: 2,
    blurStyle: BlurStyle.outer,
  );

  static const shadow2 = BoxShadow(
    color: Color(0x33000000),
    offset: Offset(0, 2),
    spreadRadius: 0,
    blurRadius: 4,
    blurStyle: BlurStyle.outer,
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'
    hide SizeExtension, RadiusExtension;

extension SizeNumberExtension on num {
  /// Adjusts the width according to the screen size ratio
  double get w => ScreenUtil().setWidth(this);

  /// Adjusts the height according to the screen size ratio
  double get h => ScreenUtil().setHeight(this);

  /// Adjusts the radius according to the screen size ratio
  double get r => ScreenUtil().radius(this);

  /// Adjusts the font size according to the screen size ratio
  double get sp => ScreenUtil().setSp(this);
}

extension SizeEdgeInsetsExtension on EdgeInsets {
  EdgeInsets get r => copyWith(
        top: top.r,
        bottom: bottom.r,
        right: right.r,
        left: left.r,
      );

  EdgeInsets get w => copyWith(
        top: top.w,
        bottom: bottom.w,
        right: right.w,
        left: left.w,
      );

  EdgeInsets get h => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.h,
        left: left.h,
      );
}

extension SizeBorderRadiusExtension on BorderRadius {
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.r,
        bottomRight: bottomRight.r,
        topLeft: topLeft.r,
        topRight: topRight.r,
      );

  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.w,
        bottomRight: bottomRight.w,
        topLeft: topLeft.w,
        topRight: topRight.w,
      );

  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension SizeRadiusExtension on Radius {
  Radius get w => Radius.elliptical(
        x.w,
        y.w,
      );
  Radius get h => Radius.elliptical(
        x.h,
        y.h,
      );
  Radius get r => Radius.elliptical(
        x.r,
        y.r,
      );
}

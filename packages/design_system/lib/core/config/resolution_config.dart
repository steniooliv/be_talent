import 'package:design_system/core/config/resolution_size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Base configuration for Screen Util Package
///
/// This is the base configuration for resizing the screen conform the device size
class ResolutionConfig {
  ResolutionConfig._();

  static void init(
    BuildContext context, {
    Size? designSize,
    bool? minTextAdapt,
  }) {
    ScreenUtil.init(
      context,
      designSize: const Size(
        ResolutionSizeConfig.width,
        ResolutionSizeConfig.height,
      ),
      minTextAdapt: true,
      fontSizeResolver: FontSizeResolvers.width,
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide SizeExtension;

class ResolutionAppWidget extends StatelessWidget {
  const ResolutionAppWidget({
    super.key,
    required this.child,
    this.resolutionSize = const Size(
      ResolutionSizeConfig.width,
      ResolutionSizeConfig.height,
    ),
    this.minTextAdapt = false,
    this.splitScreenMode = false,
  });

  final Widget child;
  final Size resolutionSize;
  final bool minTextAdapt;
  final bool splitScreenMode;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      key: key,
      designSize: resolutionSize,
      minTextAdapt: minTextAdapt,
      splitScreenMode: splitScreenMode,
      builder: (context, child) => child ?? const SizedBox(),
      child: child,
    );
  }
}

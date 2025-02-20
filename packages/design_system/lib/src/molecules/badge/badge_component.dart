import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({
    super.key,
    this.label,
    this.child,
    this.color = BeColors.primary,
  });

  final String? label;
  final Widget? child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Badge(
      padding: EdgeInsets.all(4.w),
      offset: Offset(6.w, -20.h),
      alignment: Alignment.center,
      backgroundColor: color,
      label: label != null
          ? BeText.badge(
              label!,
              color: BeColors.white,
            )
          : null,
      child: child,
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent({
    super.key,
    required this.icon,
    this.label,
    this.color = BeColors.primary,
    this.iconSize = 32,
  });

  final String? label;
  final IconData? icon;
  final Color color;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Badge(
      offset: Offset(-3, 0),
      backgroundColor: color,
      alignment: Alignment.topRight,
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
      label: label != null
          ? Text(
              label!,
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            )
          : null,
      child: icon != null
          ? Icon(
              icon,
              size: iconSize.w,
            )
          : null,
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({
    super.key,
    this.imagePath,
    this.label,
    this.radius,
  }) : assert(imagePath == null || label == null);

  final String? imagePath;
  final String? label;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: BeColors.gray05,
      radius: radius ?? 17.w,
      child: _buildAvatar(),
    );
  }

  Widget _buildAvatar() {
    if (imagePath == null) {
      return BeText.headline3(
        label!,
        textHeightBehavior: TextHeightBehavior(
          applyHeightToLastDescent: false,
        ),
      );
    }
    if (imagePath != null && imagePath!.isNotEmpty) {
      return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(50)).r,
        child: BeImage.imageNetwork(
          height: 50.h,
          imagePath: imagePath!,
          fit: BoxFit.contain,
        ),
      );
    }

    return BeImage.imageAsset(
      height: 50.h,
      imagePath: 'lib/assets/images/png/avatar_placeholder.png',
      fit: BoxFit.contain,
      package: 'design_system',
    );
  }
}

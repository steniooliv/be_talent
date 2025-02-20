import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({
    super.key,
    this.imagePath,
    this.label,
  }) : assert(imagePath == null || label == null);

  final String? imagePath;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: BeColors.gray05,
      radius: 22.5.w,
      child: imagePath == null
          ? BeText.headline3(
              label!,
              textHeightBehavior: TextHeightBehavior(
                applyHeightToLastDescent: false,
              ),
            )
          : ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)).r,
              child: BeImage.imageNetwork(
                height: 40.h,
                imagePath: imagePath!,
                fit: BoxFit.contain,
              ),
            ),
    );
  }
}

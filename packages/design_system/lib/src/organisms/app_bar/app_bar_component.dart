import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/image/image.dart';
import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({
    super.key,
    this.title,
    this.leading,
    this.actions,
    this.showLogo = true,
    this.automaticallyImplyLeading = true,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool showLogo;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _buildTitle(),
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      actions: actions,
    );
  }

  Widget? _buildTitle() {
    if (showLogo) {
      return Padding(
        padding: const EdgeInsets.only(left: 4).w,
        child: Row(
          children: [
            BeImage.svgAsset(
              imagePath: 'lib/assets/images/svg/logo.svg',
              size: 14.h,
              package: 'design_system',
            ),
          ],
        ),
      );
    }
    if (title != null) {
      return title;
    }
    return null;
  }

  @override
  Size get preferredSize => Size.fromHeight(68.h);
}

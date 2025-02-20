import 'package:design_system/design_system.dart';
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
      forceMaterialTransparency: true,
      centerTitle: false,
      titleSpacing: 20.w,
      title: _buildTitle(),
      automaticallyImplyLeading: automaticallyImplyLeading,
      leading: leading,
      actions: [
        ...?actions,
        SizedBox(width: 20.w),
      ],
    );
  }

  Widget? _buildTitle() {
    if (showLogo) {
      return Row(
        children: [
          BeImage.svgAsset(
            imagePath: 'lib/assets/images/svg/logo.svg',
            size: 14.h,
            package: 'design_system',
          ),
        ],
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

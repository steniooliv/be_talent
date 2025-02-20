import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class AppBarExample extends BaseExample {
  AppBarExample({
    super.name = 'AppBar',
    super.route = '/app_bar',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Standard',
          widget: BeAppBar.standard(
            title: BeAvatar.standard(
              label: 'CG',
            ),
            actions: [
              BeBadge.standard(
                label: '2',
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    BeIcons.bell,
                    size: 32.w,
                  ),
                ),
              ),
            ],
            automaticallyImplyLeading: false,
          ),
        ),
        WidgetExample(
          title: 'Logo',
          widget: BeAppBar.logo(
            automaticallyImplyLeading: false,
          ),
        ),
      ];
}

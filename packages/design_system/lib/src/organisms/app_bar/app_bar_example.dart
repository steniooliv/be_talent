import 'package:design_system/design_system.dart';
import 'package:design_system/src/organisms/app_bar/app_bar.dart';
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
            title: Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundColor: BeColors.gray05,
                radius: 20.r,
                child: Text(
                  'SO',
                  style: BeTextStyles.headline3,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Badge(
                  offset: Offset(-3, 0),
                  backgroundColor: BeColors.primary,
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 4.h),
                  label: Text(
                    '02',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  child: Icon(
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

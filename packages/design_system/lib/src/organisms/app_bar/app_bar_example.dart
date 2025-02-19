import 'package:design_system/design_system.dart';

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
                icon: BeIcons.bell,
                label: '02',
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

import 'package:design_system/design_system.dart';
import 'package:design_system/src/molecules/badge/badge.dart';

class BadgeExample extends BaseExample {
  BadgeExample({
    super.name = 'Badge',
    super.route = '/badge',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Standard',
          widget: BeBadge.standard(
            label: '02',
          ),
        ),
        WidgetExample(
          title: 'Standard with Icon',
          widget: BeBadge.standard(
            label: '02',
            icon: BeIcons.bell,
            iconSize: 32.w,
          ),
        ),
      ];
}

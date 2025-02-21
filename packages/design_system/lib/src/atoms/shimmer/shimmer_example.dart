import 'package:design_system/design_system.dart';

class ShimmerExample extends BaseExample {
  ShimmerExample({
    super.name = 'Shimmer',
    super.route = '/shimmer',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Shimmer',
          widget: BeShimmer.standard(
            height: 20,
          ),
        ),
      ];
}

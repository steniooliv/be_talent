import 'package:design_system/design_system.dart';

class SearchExample extends BaseExample {
  SearchExample({
    super.name = 'Search Field',
    super.route = '/search_field',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Search',
          widget: BeSearchField.standard(),
        ),
      ];
}

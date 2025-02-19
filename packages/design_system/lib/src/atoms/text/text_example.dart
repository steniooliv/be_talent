import 'package:design_system/design_system.dart';

class TextExample extends BaseExample {
  TextExample({
    super.name = 'Text',
    super.route = '/text',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Headline 1',
          widget: BeText.headline1('Texto de Exemplo'),
        ),
        WidgetExample(
          title: 'Headline 2',
          widget: BeText.headline2('Texto de Exemplo'),
        ),
        WidgetExample(
          title: 'Headline 3',
          widget: BeText.headline3('Texto de Exemplo'),
        ),
        WidgetExample(
          title: 'Badge',
          widget: BeText.badge('Texto de Exemplo'),
        ),
      ];
}

import 'package:design_system/design_system.dart';

class AvatarExample extends BaseExample {
  AvatarExample({
    super.name = 'Avatar',
    super.route = '/avatar',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Standard with Image',
          widget: BeAvatar.standard(
            imagePath: 'https://www.github.com/steniooliv.png',
          ),
        ),
        WidgetExample(
          title: 'Standard with Label',
          widget: BeAvatar.standard(
            label: 'SO',
          ),
        ),
      ];
}

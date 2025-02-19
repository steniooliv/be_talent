import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/image/image.dart';

class ImageExample extends BaseExample {
  ImageExample({
    super.name = 'Image',
    super.route = '/image',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Svg Asset',
          widget: BeImage.svgAsset(
            imagePath: 'lib/assets/images/svg/logo.svg',
            package: 'design_system',
          ),
        ),
        WidgetExample(
          title: 'Svg Network',
          widget: BeImage.svgNetwork(
            imagePath: 'https://www.svgrepo.com/show/530661/genetic-data.svg',
            size: 100,
            package: 'design_system',
          ),
        ),
        WidgetExample(
          title: 'Png Asset',
          widget: BeImage.imageAsset(
            height: 100,
            imagePath: 'lib/assets/images/png/photo1.png',
            package: 'design_system',
          ),
        ),
        WidgetExample(
          title: 'Png Network',
          widget: BeImage.imageNetwork(
            height: 150,
            imagePath:
                'https://www.piclumen.com/wp-content/uploads/2024/10/piclumen-upscale-after-300x300.webp',
            package: 'design_system',
          ),
        ),
      ];
}

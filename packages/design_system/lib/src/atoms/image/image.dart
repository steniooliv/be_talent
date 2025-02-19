import 'package:design_system/src/atoms/image/image_component.dart';
import 'package:design_system/src/atoms/image/image_enum.dart';

class BeImage extends ImageComponent {
  const BeImage.svgAsset({
    super.key,
    required super.imagePath,
    super.size,
    super.color,
    super.package,
    super.fit,
  }) : super(
          type: ImageEnum.assetSvg,
        );

  const BeImage.imageAsset({
    super.key,
    required super.imagePath,
    super.width,
    super.height,
    super.color,
    super.package,
    super.fit,
  }) : super(
          type: ImageEnum.assetImage,
        );

  const BeImage.svgNetwork({
    super.key,
    required super.imagePath,
    super.size,
    super.color,
    super.package,
    super.fit,
  }) : super(
          type: ImageEnum.networkSvg,
        );

  const BeImage.imageNetwork({
    super.key,
    required super.imagePath,
    super.width,
    super.height,
    super.color,
    super.package,
    super.fit,
  }) : super(
          type: ImageEnum.networkImage,
        );
}

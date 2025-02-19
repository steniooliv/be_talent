import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/image/image_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    super.key,
    required this.imagePath,
    this.size,
    this.width,
    this.height,
    this.color,
    this.fit,
    this.package,
    this.type = ImageEnum.assetImage,
  });

  final String imagePath;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;
  final String? package;
  final ImageEnum type;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ImageEnum.assetSvg => SvgPicture.asset(
          imagePath,
          package: package,
          height: size ?? 24.h,
          colorFilter: color == null
              ? null
              : ColorFilter.mode(
                  color!,
                  BlendMode.color,
                ),
          fit: fit ?? BoxFit.contain,
          placeholderBuilder: (context) => SizedBox(
            width: size ?? 24.h,
            height: size ?? 24.h,
          ),
        ),
      ImageEnum.networkSvg => SvgPicture.network(
          imagePath,
          height: size ?? 24.h,
          colorFilter: color == null
              ? null
              : ColorFilter.mode(
                  color!,
                  BlendMode.color,
                ),
          fit: fit ?? BoxFit.contain,
          placeholderBuilder: (context) => SizedBox(
            width: size ?? 24.h,
            height: size ?? 24.h,
          ),
        ),
      ImageEnum.networkImage => Image.network(
          imagePath,
          width: width,
          height: height,
          color: color,
          fit: fit ?? BoxFit.contain,
          errorBuilder: (context, _, __) => SizedBox(
            width: width,
            height: height,
          ),
          loadingBuilder: (_, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
        ),
      _ => Image.asset(
          imagePath,
          package: package,
          width: width,
          height: height,
          color: color,
          fit: fit ?? BoxFit.contain,
          errorBuilder: (context, _, __) => SizedBox(
            width: width,
            height: height,
          ),
        ),
    };
  }
}

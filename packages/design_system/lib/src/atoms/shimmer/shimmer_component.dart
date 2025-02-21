import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerComponent extends StatelessWidget {
  const ShimmerComponent({
    super.key,
    required this.height,
    this.width = double.maxFinite,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: BeColors.gray05,
      highlightColor: BeColors.gray10,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)).r,
          color: BeColors.white,
        ),
      ),
    );
  }
}

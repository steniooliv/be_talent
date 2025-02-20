import 'package:design_system/design_system.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({
    super.key,
    required this.info,
    required this.value,
  });

  final String info;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BeText.headline2(info),
            BeText.headline3(
              value,
              textAlign: TextAlign.end,
            ),
          ],
        ),
        DottedBorder(
          dashPattern: [5, 5],
          color: BeColors.gray10,
          customPath: (size) {
            return Path()
              ..moveTo(0, 1)
              ..lineTo(size.width, 1);
          },
          child: Container(),
        ),
      ],
    );
  }
}

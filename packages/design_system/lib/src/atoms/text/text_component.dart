import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  const TextComponent({
    super.key,
    required this.text,
    this.style,
    this.color,
    this.maxLines,
    this.textAlign,
    this.textOverflow,
    this.textDirection,
    this.textHeightBehavior,
    this.softWrap = true,
  });

  final String text;
  final TextStyle? style;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final TextDirection? textDirection;
  final TextHeightBehavior? textHeightBehavior;
  final bool softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow,
      textDirection: textDirection,
      softWrap: softWrap,
      textHeightBehavior: textHeightBehavior,
      style: style ?? BeTextStyles.headline3,
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/text/text_component.dart';

class BeText extends TextComponent {
  BeText.headline1(
    String text, {
    super.key,
    super.color,
    super.maxLines,
    super.textAlign,
    super.textDirection,
    super.textOverflow,
    super.softWrap,
    super.textHeightBehavior,
  }) : super(
          text: text,
          style: BeTextStyles.headline1.copyWith(color: color),
        );

  BeText.headline2(
    String text, {
    super.key,
    super.color,
    super.maxLines,
    super.textAlign,
    super.textDirection,
    super.textOverflow,
    super.softWrap,
    super.textHeightBehavior,
  }) : super(
          text: text,
          style: BeTextStyles.headline2.copyWith(color: color),
        );

  BeText.headline3(
    String text, {
    super.key,
    super.color,
    super.maxLines,
    super.textAlign,
    super.textDirection,
    super.textOverflow,
    super.softWrap,
    super.textHeightBehavior,
  }) : super(
          text: text,
          style: BeTextStyles.headline3.copyWith(color: color),
        );

  BeText.badge(
    String text, {
    super.key,
    super.color,
    super.maxLines,
    super.textAlign,
    super.textDirection,
    super.textOverflow,
    super.softWrap,
    super.textHeightBehavior,
  }) : super(
          text: text,
          style: BeTextStyles.badge.copyWith(color: color),
        );
}

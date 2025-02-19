import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/image/image_example.dart';
import 'package:design_system/src/molecules/badge/badge_example.dart';
import 'package:design_system/src/organisms/app_bar/app_bar_example.dart';

class Examples {
  Examples._();

  static final atoms = <BaseExample>[
    ImageExample(),
  ];
  static final molecules = <BaseExample>[
    BadgeExample(),
  ];
  static final organisms = <BaseExample>[
    AppBarExample(),
  ];
}

import 'package:design_system/design_system.dart';
import 'package:design_system/src/atoms/image/image_example.dart';
import 'package:design_system/src/atoms/shimmer/shimmer_example.dart';
import 'package:design_system/src/atoms/text/text_example.dart';
import 'package:design_system/src/molecules/avatar/avatar_example.dart';
import 'package:design_system/src/molecules/badge/badge_example.dart';
import 'package:design_system/src/molecules/search_field/search_example.dart';
import 'package:design_system/src/organisms/app_bar/app_bar_example.dart';
import 'package:design_system/src/organisms/employee_card/employee_card_example.dart';

class Examples {
  Examples._();

  static final atoms = <BaseExample>[
    ImageExample(),
    TextExample(),
    ShimmerExample(),
  ];
  static final molecules = <BaseExample>[
    AvatarExample(),
    BadgeExample(),
    SearchExample(),
  ];
  static final organisms = <BaseExample>[
    AppBarExample(),
    EmployeeCardExample(),
  ];
}

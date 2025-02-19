import 'package:design_system/src/organisms/app_bar/app_bar_component.dart';

class BeAppBar extends AppBarComponent {
  const BeAppBar.standard({
    super.key,
    super.title,
    super.leading,
    super.automaticallyImplyLeading,
    super.actions,
  }) : super(showLogo: false);

  const BeAppBar.logo({
    super.key,
    super.automaticallyImplyLeading,
  });
}

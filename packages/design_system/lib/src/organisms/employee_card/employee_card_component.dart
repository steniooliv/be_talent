import 'package:design_system/design_system.dart';
import 'package:design_system/src/organisms/employee_card/widget/information_widget.dart';
import 'package:flutter/material.dart';

class EmployeeCardComponent extends StatelessWidget {
  const EmployeeCardComponent({
    super.key,
    required this.imagePath,
    required this.name,
    required this.informations,
  });

  final String imagePath;
  final String name;
  final List<({String info, String value})> informations;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 16).w,
      childrenPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 31.h),
      iconColor: BeColors.primary,
      collapsedIconColor: BeColors.primary,
      shape: Border(),
      collapsedShape: Border(),
      title: Row(
        children: [
          BeAvatar.standard(
            imagePath: 'https://www.github.com/steniooliv.png',
          ),
          SizedBox(
            width: 24.w,
          ),
          Expanded(
            flex: 4,
            child: BeText.headline3(
              name,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: informations.length,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) => InformationWidget(
            info: informations[index].info,
            value: informations[index].value,
          ),
        ),
      ],
    );
  }
}

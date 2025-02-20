import 'package:design_system/design_system.dart';
import 'package:design_system/src/organisms/employee_card/widget/information_widget.dart';
import 'package:flutter/material.dart';

class EmployeeCardComponent extends StatefulWidget {
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
  State<EmployeeCardComponent> createState() => _EmployeeCardComponentState();
}

class _EmployeeCardComponentState extends State<EmployeeCardComponent> {
  ValueNotifier<bool> isExpanded = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 16).w,
      childrenPadding: EdgeInsets.fromLTRB(16.w, 31.h, 16.w, 0.h),
      iconColor: BeColors.primary,
      trailing: ValueListenableBuilder(
        valueListenable: isExpanded,
        builder: (context, value, _) => Icon(
          value ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          size: 32.w,
        ),
      ),
      onExpansionChanged: (value) {
        isExpanded.value = value;
      },
      collapsedIconColor: BeColors.primary,
      shape: Border(),
      collapsedShape: Border(),
      title: Row(
        children: [
          BeAvatar.standard(
            imagePath: widget.imagePath,
          ),
          SizedBox(
            width: 24.w,
          ),
          Expanded(
            flex: 4,
            child: BeText.headline3(
              widget.name,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.informations.length,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.h);
          },
          itemBuilder: (context, index) => InformationWidget(
            info: widget.informations[index].info,
            value: widget.informations[index].value,
          ),
        ),
      ],
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeeTableHeaderWidget extends StatelessWidget {
  const EmployeeTableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16).w,
      child: Row(
        children: [
          BeText.headline2('Foto'),
          SizedBox(
            width: 24.w,
          ),
          Expanded(
            flex: 4,
            child: BeText.headline2(
              'Nome',
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
          CircleAvatar(
            radius: 4.r,
            backgroundColor: BeColors.black,
          ),
          SizedBox(
            width: 12.w,
          ),
        ],
      ),
    );
  }
}

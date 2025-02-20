import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeeTableWidget extends StatelessWidget {
  const EmployeeTableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)).r,
        border: Border.all(
          color: BeColors.gray10,
        ),
        color: BeColors.blue10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
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
          ),
          Divider(
            color: BeColors.gray10,
            height: 1.h,
          ),
          Container(
            color: BeColors.white,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => BeEmployeeCard(
                imagePath: 'https://www.github.com/steniooliv.png',
                name: 'Stênio de Oliveira',
                informations: [
                  (info: 'Cargo', value: 'Desenvolvedor'),
                  (info: 'Data admissão', value: '00/00/000'),
                  (info: 'Telefone', value: '+55 (37) 99999-9999'),
                ],
              ),
              separatorBuilder: (context, index) => Divider(
                color: BeColors.gray10,
                height: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

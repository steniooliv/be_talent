import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BeColors.white,
      appBar: BeAppBar.standard(
        automaticallyImplyLeading: false,
        title: BeAvatar.standard(
          label: 'CG',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20).w,
            child: BeBadge.standard(
              label: '02',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 24.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BeText.headline1(
              'Funcionários',
            ),
            SizedBox(
              height: BeSizes.r16,
            ),
            Container(
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
                          width: 8.w,
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
                    width: double.maxFinite,
                    height: 500.h,
                    child: Column(
                      children: [
                        ExpansionTile(
                          tilePadding: EdgeInsets.symmetric(horizontal: 16).w,
                          childrenPadding:
                              EdgeInsets.symmetric(horizontal: 16).w,
                          iconColor: BeColors.primary,
                          collapsedIconColor: BeColors.primary,
                          shape: Border(),
                          collapsedShape: Border(),
                          title: Row(
                            children: [
                              BeAvatar.standard(
                                imagePath:
                                    'https://www.github.com/steniooliv.png',
                              ),
                              SizedBox(
                                width: 24.w,
                              ),
                              Expanded(
                                flex: 4,
                                child: BeText.headline3(
                                  'Carlos Gabriel',
                                  textOverflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BeText.headline2('Cargo'),
                                BeText.headline3('Desenvolvedor'),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          color: BeColors.gray10,
                          height: 1.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

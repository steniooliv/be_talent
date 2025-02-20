import 'package:be_talent/src/features/employees/view/widgets/employee_table_widget.dart';
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
          BeBadge.standard(
            label: '02',
            child: IconButton(
              icon: Icon(BeIcons.bell, size: 32.w),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: BeColors.primary,
                    content: BeText.headline3(
                      'Funcionalidade não está disponível no momento.',
                      color: BeColors.white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 24.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              BeText.headline1(
                'Funcionários',
              ),
              SizedBox(
                height: BeSizes.r16,
              ),
              TextFormField(),
              SizedBox(
                height: BeSizes.r16,
              ),
              EmployeeTableWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

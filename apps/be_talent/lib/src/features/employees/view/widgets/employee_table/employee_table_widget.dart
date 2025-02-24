import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/view/widgets/employee_table/employee_table_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmployeeTableWidget extends StatelessWidget {
  const EmployeeTableWidget({
    super.key,
    required this.employeeList,
  });

  final List<Employee> employeeList;

  @override
  Widget build(BuildContext context) {
    if (employeeList.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 16).h,
        child: Center(
          child: BeText.headline3(
            'Não há nenhum item para ser exibido',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
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
          EmployeeTableHeaderWidget(),
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
              itemCount: employeeList.length,
              itemBuilder: (context, index) {
                final employee = employeeList[index];

                return BeEmployeeCard(
                  imagePath: employee.image ?? '',
                  name: employee.name,
                  informations: [
                    (
                      info: 'Cargo',
                      value: employee.job,
                    ),
                    (
                      info: 'Data admissão',
                      value: DateFormat.yMd('pt_BR')
                          .format(employee.admissionDate),
                    ),
                    (
                      info: 'Telefone',
                      value: employee.phone.phoneBR,
                    ),
                  ],
                );
              },
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

import 'package:be_talent/src/features/employees/view/widgets/employee_table/employee_table_header_widget.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeeTableLoadingWidget extends StatelessWidget {
  const EmployeeTableLoadingWidget({
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BeShimmer.standard(
                    height: 35.h,
                  ),
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

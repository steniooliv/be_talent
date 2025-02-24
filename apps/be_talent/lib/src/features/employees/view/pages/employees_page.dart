import 'package:be_talent/src/features/employees/view/widgets/employee_table_failure_widget.dart';
import 'package:be_talent/src/features/employees/view/widgets/employee_table_loading_widget.dart';
import 'package:be_talent/src/features/employees/view/widgets/employee_table_widget.dart';
import 'package:be_talent/src/features/employees/view_model/employee_state.dart';
import 'package:be_talent/src/features/employees/view_model/employee_view_model.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesPage extends StatefulWidget {
  const EmployeesPage({
    super.key,
    required this.viewModel,
  });

  final EmployeeViewModel viewModel;

  @override
  State<EmployeesPage> createState() => _EmployeesPageState();
}

class _EmployeesPageState extends State<EmployeesPage> {
  EmployeeViewModel get viewModel => widget.viewModel;

  @override
  void initState() {
    super.initState();
    viewModel.getEmployees();
  }

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
                    behavior: SnackBarBehavior.floating,
                    backgroundColor: BeColors.primary,
                    content: BeText.headline3(
                      'Esta funcionalidade estará disponível em breve.',
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
      body: RefreshIndicator(
        elevation: 0,
        color: BeColors.primary,
        onRefresh: () async {
          viewModel.getEmployees();
        },
        child: SingleChildScrollView(
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
                TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: BeTextStyles.headline3,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: BeColors.gray05,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(100)).r,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 16).w,
                      child: Icon(
                        BeIcons.search,
                        size: 24.w,
                        color: BeColors.black,
                      ),
                    ),
                    hintText: 'Pesquisar',
                    hintStyle: BeTextStyles.headline3,
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                  ),
                  onChanged: (value) {
                    if (value == '') {
                      viewModel.searchClear();
                      return;
                    }
                    viewModel.searchEmployees(value);
                  },
                ),
                SizedBox(
                  height: BeSizes.r16,
                ),
                BlocBuilder<EmployeeViewModel, EmployeeState>(
                  bloc: viewModel,
                  builder: (context, state) {
                    if (state is SuccessEmployeeState) {
                      return EmployeeTableWidget(
                        employeeList: state.employeeList,
                      );
                    }
                    if (state is EmptyEmployeeState) {
                      return EmployeeTableWidget(
                        employeeList: [],
                      );
                    }
                    if (state is LoadingEmployeeState) {
                      return EmployeeTableLoadingWidget();
                    }
                    if (state is FailureEmployeeState) {
                      return EmployeeTableFailureWidget(
                        onRefresh: () async {
                          await viewModel.getEmployees();
                        },
                      );
                    }
                    return SizedBox();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/employee_repository.dart';
import 'package:be_talent/src/features/employees/view_model/employee_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeViewModel extends Cubit<EmployeeState> {
  EmployeeViewModel({
    required this.repository,
  }) : super(InitialEmployeeState());

  final EmployeeRepository repository;

  List<Employee> employeeList = [];

  Future<void> getEmployees() async {
    emit(LoadingEmployeeState());
    final response = await repository.getEmployees();
    response.fold(
      (l) => emit(FailureEmployeeState(failure: l)),
      (r) {
        if (r.isEmpty) return emit(EmptyEmployeeState());
        employeeList = r;
        return emit(SuccessEmployeeState(employeeList: employeeList));
      },
    );
  }

  void searchEmployees(String query) {
    emit(LoadingEmployeeState());

    List<Employee> newList = employeeList
        .where(
          (e) => [
            e.name.toQuery,
            e.job.toQuery,
            e.phone.toQuery,
          ].any((field) => field.contains(query.toQuery)),
        )
        .toList();

    if (newList.isEmpty) return emit(EmptyEmployeeState());
    emit(SuccessEmployeeState(employeeList: newList));
  }

  void searchClear() {
    if (employeeList.isEmpty) return emit(EmptyEmployeeState());
    emit(SuccessEmployeeState(employeeList: employeeList));
  }
}

import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/employee_repository.dart';
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
        .where((e) => e.name.toQuery.contains(query.toLowerCase()))
        .toList();
    emit(SuccessEmployeeState(employeeList: newList));
  }

  void searchClear() {
    emit(SuccessEmployeeState(employeeList: employeeList));
  }
}

sealed class EmployeeState {}

final class InitialEmployeeState extends EmployeeState {}

final class EmptyEmployeeState extends EmployeeState {}

final class LoadingEmployeeState extends EmployeeState {}

final class FailureEmployeeState extends EmployeeState {
  FailureEmployeeState({required this.failure});
  final Failure failure;
}

final class SuccessEmployeeState extends EmployeeState {
  SuccessEmployeeState({required this.employeeList});
  final List<Employee> employeeList;
}

import 'package:be_talent/src/core/core.dart';

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

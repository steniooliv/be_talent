import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/employee_repository.dart';
import 'package:be_talent/src/features/employees/data/repositories/remote_employee_repository.dart';
import 'package:be_talent/src/features/employees/data/services/employee_service.dart';
import 'package:be_talent/src/features/employees/view_model/employee_view_model.dart';
import 'package:get_it/get_it.dart';

class AppDependencies {
  AppDependencies._();

  static final GetIt _di = GetIt.I;

  static void setupDependencies() {
    _di.registerFactory(
      () => HttpService(),
    );

    // Employee Feature Dependencies
    _di.registerFactory(
      () => EmployeeService(http: _di.get()),
    );
    _di.registerFactory<EmployeeRepository>(
      () => RemoteEmployeeRepository(service: _di.get()),
    );
    _di.registerLazySingleton(
      () => EmployeeViewModel(repository: _di.get()),
    );
  }
}

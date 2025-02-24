import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/remote_employee_repository.dart';
import 'package:be_talent/src/features/employees/view_model/employee_state.dart';
import 'package:be_talent/src/features/employees/view_model/employee_view_model.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'employee_view_model_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<RemoteEmployeeRepository>(),
])
void main() {
  late RemoteEmployeeRepository repository;
  final employee = Employee(
    name: 'Stenio de Oliveira',
    job: 'Flutter Developer',
    admissionDate: DateTime(2023),
    id: '2',
    phone: '37999991111',
  );

  setUp(() {
    repository = MockRemoteEmployeeRepository();
  });

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit LoadingEmployeeState and SuccessEmployeeState on getEmployees',
    build: () {
      when(repository.getEmployees())
          .thenAnswer((_) async => Right([employee]));
      return EmployeeViewModel(repository: repository);
    },
    act: (bloc) async => bloc.getEmployees(),
    expect: () => [
      isA<LoadingEmployeeState>(),
      isA<SuccessEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit LoadingEmployeeState and EmptyEmployeeState when getEmployees is empty',
    build: () {
      when(repository.getEmployees()).thenAnswer((_) async => Right([]));
      return EmployeeViewModel(repository: repository);
    },
    act: (bloc) async => bloc.getEmployees(),
    expect: () => [
      isA<LoadingEmployeeState>(),
      isA<EmptyEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit LoadingEmployeeState and FailureEmployeeState when getEmployees return a Server Failure',
    build: () {
      when(repository.getEmployees())
          .thenAnswer((_) async => Left(ServerRequestFailure(message: '')));
      return EmployeeViewModel(repository: repository);
    },
    act: (bloc) async => bloc.getEmployees(),
    expect: () => [
      isA<LoadingEmployeeState>(),
      isA<FailureEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit LoadingEmployeeState and SuccessEmployeeState when search in employee list',
    build: () {
      final viewModel = EmployeeViewModel(repository: repository);
      when(viewModel.employeeList = [employee]);
      return viewModel;
    },
    act: (bloc) async => bloc.searchEmployees('stenio'),
    expect: () => [
      isA<LoadingEmployeeState>(),
      isA<SuccessEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit LoadingEmployeeState and EmptyEmployeeState when search unlisted employee',
    build: () {
      final viewModel = EmployeeViewModel(repository: repository);
      when(viewModel.employeeList = [employee]);
      return viewModel;
    },
    act: (bloc) async => bloc.searchEmployees('asdfasdf'),
    expect: () => [
      isA<LoadingEmployeeState>(),
      isA<EmptyEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit EmptyEmployeeState when query is empty',
    build: () {
      final viewModel = EmployeeViewModel(repository: repository);
      when(viewModel.employeeList = []);
      return viewModel;
    },
    act: (bloc) async => bloc.searchClear(),
    expect: () => [
      isA<EmptyEmployeeState>(),
    ],
  );

  blocTest<EmployeeViewModel, EmployeeState>(
    'should emit SuccessEmployeeState when query is empty',
    build: () {
      final viewModel = EmployeeViewModel(repository: repository);
      when(viewModel.employeeList = [employee]);
      return viewModel;
    },
    act: (bloc) async => bloc.searchClear(),
    expect: () => [
      isA<SuccessEmployeeState>(),
    ],
  );
}

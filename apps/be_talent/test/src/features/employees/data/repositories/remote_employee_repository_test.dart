import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/remote_employee_repository.dart';
import 'package:be_talent/src/features/employees/data/services/employee_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'remote_employee_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<EmployeeService>(),
])
void main() {
  late EmployeeService service;
  late RemoteEmployeeRepository repository;
  final employee = Employee(
    name: 'Stenio de Oliveira',
    job: 'Flutter Developer',
    admissionDate: DateTime(2023),
    id: '2',
    phone: '37999991111',
  );

  setUp(() {
    service = MockEmployeeService();
    repository = RemoteEmployeeRepository(service: service);
  });

  test('it should be possible to return a list of employees', () async {
    when(service.getEmployees()).thenAnswer((_) async => [employee]);

    final result = await repository.getEmployees();

    expect(result.fold((l) => null, (r) => [employee]), isA<List<Employee>>());

    verify(service.getEmployees()).called(1);
  });

  test(
    'an error should be returned when trying to return the employee list',
    () async {
      when(service.getEmployees())
          .thenThrow(ServerRequestFailure(message: 'message'));

      final result = await repository.getEmployees();

      expect(
        result.fold(
          (l) => ServerRequestFailure(message: 'message'),
          (r) => null,
        ),
        isA<ServerRequestFailure>(),
      );

      verify(service.getEmployees()).called(1);
    },
  );
}

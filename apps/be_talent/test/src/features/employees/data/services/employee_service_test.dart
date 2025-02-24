import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/services/employee_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'employee_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<HttpService>(),
])
void main() {
  late MockHttpService mockHttpService;
  late EmployeeService service;

  final employee = Employee(
    name: 'Stenio de Oliveira',
    job: 'Flutter Developer',
    admissionDate: DateTime(2023),
    id: '2',
    phone: '37999991111',
  );

  setUp(() {
    mockHttpService = MockHttpService();
    service = EmployeeService(http: mockHttpService);
  });

  test('should return a list of employees', () async {
    when(mockHttpService.get(any)).thenAnswer(
      (_) async => Response(
        data: {
          'record': [
            employee.toMap(),
          ],
        },
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    final result = await service.getEmployees();

    expect(result, isA<List<Employee>>());

    verify(mockHttpService.get(any)).called(1);
  });

  test(
      'should throw an BadRequestFailure when trying to fetch the employee list',
      () async {
    when(mockHttpService.get(any)).thenAnswer(
      (_) async => Response(
        data: {},
        statusCode: 404,
        requestOptions: RequestOptions(),
      ),
    );

    expect(
      () async => service.getEmployees(),
      throwsA(isA<BadRequestFailure>()),
    );

    verify(mockHttpService.get(any)).called(1);
  });

  test(
      'should throw an ServerRequestFailure when trying to fetch the employee list',
      () async {
    when(mockHttpService.get(any)).thenAnswer(
      (_) async => Response(
        data: {},
        statusCode: 500,
        requestOptions: RequestOptions(),
      ),
    );

    expect(
      () async => service.getEmployees(),
      throwsA(isA<ServerRequestFailure>()),
    );

    verify(mockHttpService.get(any)).called(1);
  });
}

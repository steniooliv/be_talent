import 'package:be_talent/src/core/core.dart';
import 'package:be_talent/src/features/employees/data/repositories/employee_repository.dart';
import 'package:be_talent/src/features/employees/data/services/employee_service.dart';
import 'package:dartz/dartz.dart';

class RemoteEmployeeRepository implements EmployeeRepository {
  RemoteEmployeeRepository({
    required this.service,
  });

  final EmployeeService service;

  @override
  Future<Either<Failure, List<Employee>>> getEmployees() async {
    try {
      final response = await service.getEmployees();
      return Right(response);
    } on Failure catch (e) {
      return Left(e);
    }
  }
}

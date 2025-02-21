import 'package:be_talent/src/core/core.dart';
import 'package:dartz/dartz.dart';

abstract interface class EmployeeRepository {
  Future<Either<Failure, List<Employee>>> getEmployees();
}

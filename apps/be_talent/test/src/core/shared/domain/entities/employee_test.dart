import 'package:be_talent/src/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final employee = Employee(
    id: '1',
    name: 'Stenio Oliveira',
    phone: '5537999999999',
    job: 'Flutter Developer',
    admissionDate: DateTime(2021, 1, 1),
    image: 'https://www.github.com/steniooliv.png',
  );

  test('Employee should be equatable', () {
    final employeeCopy = Employee(
      id: '1',
      name: 'Stenio Oliveira',
      phone: '5537999999999',
      job: 'Flutter Developer',
      admissionDate: DateTime(2021, 1, 1),
      image: 'https://www.github.com/steniooliv.png',
    );

    final differentEmployee = Employee(
      id: '2',
      name: 'Jane Doe',
      phone: '5537987919091',
      job: 'Designer',
      admissionDate: DateTime(2022, 8, 15),
    );

    expect(employee, equals(employeeCopy));
    expect(employee, isNot(equals(differentEmployee)));
  });

  test('Employee should convert to map correctly', () {
    final map = employee.toMap();
    expect(map, {
      'id': '1',
      'name': 'Stenio Oliveira',
      'phone': '5537999999999',
      'job': 'Flutter Developer',
      'admission_date': '2021-01-01T00:00:00.000',
      'image': 'https://www.github.com/steniooliv.png',
    });
  });

  test('Employee should be created from map correctly', () {
    final map = {
      'id': '1',
      'name': 'Stenio Oliveira',
      'phone': '5537999999999',
      'job': 'Flutter Developer',
      'admission_date': '2021-01-01T00:00:00.000',
      'image': 'https://www.github.com/steniooliv.png',
    };

    final newEmployee = Employee.fromMap(map);

    expect(newEmployee, equals(employee));
  });

  test('Employee.toString() should return correct format', () {
    expect(
      employee.toString(),
      'Employee(id: 1, name: Stenio Oliveira, phone: 5537999999999, job: Flutter Developer, admissionDate: 2021-01-01 00:00:00.000, image: https://www.github.com/steniooliv.png)',
    );
  });
}

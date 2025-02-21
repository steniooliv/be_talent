import 'package:equatable/equatable.dart';

class Employee extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String job;
  final DateTime admissionDate;
  final String? image;

  const Employee({
    required this.id,
    required this.name,
    required this.phone,
    required this.job,
    required this.admissionDate,
    this.image,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        phone,
        job,
        admissionDate,
        image,
      ];

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      id: map['id'] as String,
      name: map['name'] as String,
      phone: map['phone'] as String,
      job: map['job'] as String,
      admissionDate: DateTime.parse(map['admission_date'] as String),
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  @override
  String toString() {
    return 'Employee(id: $id, name: $name, phone: $phone, job: $job, admissionDate: $admissionDate, image: $image)';
  }
}

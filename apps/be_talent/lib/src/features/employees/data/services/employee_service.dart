import 'package:be_talent/src/core/core.dart';

class EmployeeService {
  EmployeeService({
    required this.http,
  });

  final HttpService http;
  Future<List<Employee>> getEmployees() async {
    final response =
        await http.get('https://api.jsonbin.io/v3/b/67b769fead19ca34f80b79ab');

    if (response.statusCode == 200) {
      List<Employee> employeeList =
          List.from(response.data['record'].map((e) => Employee.fromMap(e)));
      return employeeList;
    }

    if (response.statusCode! >= 400 && response.statusCode! <= 499) {
      throw BadRequestFailure(message: '${response.statusMessage}');
    }
    throw ServerRequestFailure(message: '${response.statusMessage}');
  }
}

abstract class Failure implements Exception {
  Failure({
    required this.message,
    this.stackTrace,
  });

  final String message;
  final String? stackTrace;

  @override
  String toString() {
    if (stackTrace != null) {
      return '$runtimeType: $message\n$stackTrace)';
    }
    return '$runtimeType: $message)';
  }
}

class BadRequestFailure extends Failure {
  BadRequestFailure({required super.message, super.stackTrace});
}

class ServerRequestFailure extends Failure {
  ServerRequestFailure({required super.message, super.stackTrace});
}

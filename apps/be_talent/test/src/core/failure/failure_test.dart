import 'package:be_talent/src/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should failure store message and stackTrace', () {
    final badRequestFailure = BadRequestFailure(
      message: 'Invalid request',
      stackTrace: 'Stack trace example',
    );

    expect(badRequestFailure.message, 'Invalid request');
    expect(badRequestFailure.stackTrace, 'Stack trace example');
    expect(
      badRequestFailure.toString(),
      'BadRequestFailure: Invalid request\nStack trace example)',
    );
  });

  test('should failure work without stackTrace', () {
    final serverRequestFailure = ServerRequestFailure(message: 'Server error');

    expect(serverRequestFailure.message, 'Server error');
    expect(serverRequestFailure.stackTrace, isNull);
    expect(
      serverRequestFailure.toString(),
      'ServerRequestFailure: Server error)',
    );
  });

  test('should be distinct different failure types', () {
    final failure1 = BadRequestFailure(message: 'Error 1');
    final failure2 = ServerRequestFailure(message: 'Error 2');

    expect(failure1.runtimeType, BadRequestFailure);
    expect(failure2.runtimeType, ServerRequestFailure);
  });
}

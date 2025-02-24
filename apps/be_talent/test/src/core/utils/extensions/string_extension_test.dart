import 'package:be_talent/src/core/core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return a formatted phone text', () {
    final String phone = '37999999999';

    expect(phone.phoneBR, '(37) 99999-9999');
  });

  test('should return a formatted phone text', () {
    final String phone = '5537999999999';

    expect(phone.phoneBR, '+55 (37) 99999-9999');
  });

  test('should return a formatted phone text', () {
    final String phone = '3799999999';

    expect(phone.phoneBR, '(37) 9999-9999');
  });

  test('should return a formatted phone text', () {
    final String phone = '553799999999';

    expect(phone.phoneBR, '+55 (37) 9999-9999');
  });

  test('should return a text without special characters and lower case', () {
    final String query = 'Stênio';

    expect(query.toQuery, 'stenio');
  });
}

import 'package:be_talent/src/core/config/app_config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const name = 'Be Talent';
  const flavor = 'dev';
  test('should create a AppConfig instance', () {
    final config = AppConfig(name: name, flavor: flavor);

    expect(config.name, equals(name));
    expect(config.flavor, equals(flavor));
  });

  test('should be equals two same AppConfig instance', () {
    final config1 = AppConfig(name: name, flavor: flavor);
    final config2 = AppConfig(name: name, flavor: flavor);

    expect(config1, equals(config2));
    expect(config1.name, equals(config2.name));
    expect(config1.flavor, equals(config2.flavor));
  });
}

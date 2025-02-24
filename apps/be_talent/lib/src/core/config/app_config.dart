import 'package:equatable/equatable.dart';

class AppConfig extends Equatable {
  final String name;
  final String flavor;

  const AppConfig({
    required this.name,
    required this.flavor,
  });

  @override
  List<Object?> get props => [
        name,
        flavor,
      ];
}

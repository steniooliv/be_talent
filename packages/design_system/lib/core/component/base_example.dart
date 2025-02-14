import 'package:flutter/material.dart';

/// Base to create a new example widget
abstract class BaseExample {
  BaseExample({
    required this.route,
    required this.name,
  });

  final String route;
  final String name;

  List<WidgetExample> get widgets;
}

/// Widget example
class WidgetExample {
  WidgetExample({
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;
}

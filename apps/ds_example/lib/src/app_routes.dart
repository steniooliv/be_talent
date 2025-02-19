import 'package:design_system/design_system.dart';
import 'package:ds_example/src/view/pages/home_page.dart';
import 'package:ds_example/src/view/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  AppRoutes._();

  static Map<String, WidgetBuilder> getRoutes() {
    final routes = <String, WidgetBuilder>{
      '/': (context) => HomePage(),
    };

    for (BaseExample e in Examples.atoms) {
      routes[e.route] = (context) => BaseWidget(component: e);
    }
    for (BaseExample e in Examples.molecules) {
      routes[e.route] = (context) => BaseWidget(component: e);
    }
    for (BaseExample e in Examples.organisms) {
      routes[e.route] = (context) => BaseWidget(component: e);
    }

    return routes;
  }
}

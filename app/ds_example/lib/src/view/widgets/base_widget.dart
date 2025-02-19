import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget({
    super.key,
    required this.component,
  });

  final BaseExample component;

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  BaseExample get component => widget.component;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(component.name),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16).w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                component.widgets.length,
                (index) {
                  final item = component.widgets[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(item.title),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8).h,
                        child: item.widget,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

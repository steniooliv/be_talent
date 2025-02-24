import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class EmployeeTableFailureWidget extends StatelessWidget {
  const EmployeeTableFailureWidget({
    super.key,
    this.onRefresh,
  });

  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(BeSizes.m32).w,
      child: Column(
        children: [
          IconButton(
            onPressed: onRefresh,
            icon: Icon(Icons.refresh),
            color: BeColors.primary,
            iconSize: BeSizes.m32.w,
          ),
          SizedBox(
            height: BeSizes.s08.h,
          ),
          BeText.headline3(
            'Não foi possível carregar os dados no momento, tente novamente.',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

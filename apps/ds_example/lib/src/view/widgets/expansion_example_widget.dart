import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ExpansionExampleWidget extends StatelessWidget {
  const ExpansionExampleWidget({
    super.key,
    required this.title,
    required this.list,
    required this.isExpanded,
  });

  final String title;
  final List<BaseExample> list;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      initiallyExpanded: isExpanded,
      children: [
        ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = list[index];

            return ListTile(
              contentPadding: const EdgeInsets.only(left: 20),
              title: Text(item.name),
              tileColor: index.isOdd ? BeColors.blue10 : null,
              onTap: () {
                Navigator.of(context).pushNamed(item.route);
              },
            );
          },
        ),
      ],
    );
  }
}

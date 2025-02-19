import 'package:design_system/design_system.dart';
import 'package:ds_example/src/controller/home_controller.dart';
import 'package:ds_example/src/view/widgets/expansion_example_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.textEditingController = TextEditingController();
    controller.atoms = Examples.atoms;
    controller.molecules = Examples.molecules;
    controller.organisms = Examples.organisms;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BeTalent  Design System Examples',
          style: BeTextStyles.headline3.copyWith(color: BeColors.white),
        ),
        centerTitle: true,
        backgroundColor: BeColors.primary,
      ),
      body: ListenableBuilder(
        listenable: controller,
        builder: (_, __) => ListView(
          children: [
            ExpansionExampleWidget(
              title: 'Átomos',
              list: controller.atoms,
              isExpanded: controller.expandedAtoms,
            ),
            ExpansionExampleWidget(
              title: 'Moléculas',
              list: controller.molecules,
              isExpanded: controller.expandedMolecules,
            ),
            ExpansionExampleWidget(
              title: 'Organismos',
              list: controller.organisms,
              isExpanded: controller.expandedOrganisms,
            ),
          ],
        ),
      ),
    );
  }
}

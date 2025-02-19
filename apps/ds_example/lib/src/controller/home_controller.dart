import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  List<BaseExample> atoms = [];
  List<BaseExample> molecules = [];
  List<BaseExample> organisms = [];

  late TextEditingController textEditingController;

  bool expandedAtoms = false;
  bool expandedMolecules = false;
  bool expandedOrganisms = false;

  void searchExample(String query) {
    atoms = Examples.atoms
        .where(
          (element) => element.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    expandedAtoms = atoms.isNotEmpty;

    molecules = Examples.molecules
        .where(
          (element) => element.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    expandedMolecules = molecules.isNotEmpty;

    organisms = Examples.organisms
        .where(
          (element) => element.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    expandedOrganisms = organisms.isNotEmpty;

    notifyListeners();
  }
}

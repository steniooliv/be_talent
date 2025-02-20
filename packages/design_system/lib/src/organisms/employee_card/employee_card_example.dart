import 'package:design_system/design_system.dart';
import 'package:design_system/src/organisms/employee_card/employee_card.dart';

class EmployeeCardExample extends BaseExample {
  EmployeeCardExample({
    super.name = 'Employee Card',
    super.route = '/employee-card',
  });

  @override
  List<WidgetExample> get widgets => [
        WidgetExample(
          title: 'Standard',
          widget: BeEmployeeCard(
            imagePath: 'https://www.github.com/steniooliv.png',
            name: 'Stênio de Oliveira',
            informations: [
              (info: 'Cargo', value: 'Desenvolvedor'),
              (info: 'Data admissão', value: '00/00/000'),
              (info: 'Telefone', value: '+55 (37) 99999-9999'),
            ],
          ),
        ),
      ];
}

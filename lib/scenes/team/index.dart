import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/data_table.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class TeamPage extends StatelessComponent {
  const TeamPage({super.key});

  @override
  Component build(BuildContext context) {
    final rows = mockTeamData
        .map((m) => {
              'id': '${m.id}',
              'name': m.name,
              'age': '${m.age}',
              'phone': m.phone,
              'email': m.email,
              'access': m.access,
            })
        .toList();

    return div(classes: 'page', [
      const HeaderBlock(title: 'TEAM', subtitle: 'Managing the Team Members'),
      div(classes: 'card', [
        DataTableX(
          selectable: true,
          columns: const [
            TableColumn('id', 'ID'),
            TableColumn('name', 'Name'),
            TableColumn('age', 'Age'),
            TableColumn('phone', 'Phone Number'),
            TableColumn('email', 'Email'),
            TableColumn('access', 'Access Level'),
          ],
          rows: rows,
        )
      ])
    ]);
  }
}

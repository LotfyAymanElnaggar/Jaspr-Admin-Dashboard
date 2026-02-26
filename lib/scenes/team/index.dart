import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class TeamPage extends StatelessComponent {
  const TeamPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'TEAM', subtitle: 'Managing the Team Members'),
      div(classes: 'card table-wrap', [
        table([
          thead([
            tr([
              th([.text('ID')]), th([.text('Name')]), th([.text('Age')]), th([.text('Phone Number')]), th([.text('Email')]), th([.text('Access Level')])
            ])
          ]),
          tbody([
            for (final m in mockTeamData)
              tr([
                td([.text('${m.id}')]),
                td(classes: 'green', [.text(m.name)]),
                td([.text('${m.age}')]),
                td([.text(m.phone)]),
                td([.text(m.email)]),
                td([span(classes: 'badge ${m.access}', [.text(m.access)])]),
              ])
          ])
        ])
      ])
    ]);
  }
}

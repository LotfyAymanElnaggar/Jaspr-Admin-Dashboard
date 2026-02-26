import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../data/mock_data.dart';

class TeamPage extends StatelessComponent {
  const TeamPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'card', [
      h2([.text('TEAM')]),
      p(classes: 'muted', [.text('Managing the Team Members')]),
      table([
        thead([tr([th([.text('ID')]), th([.text('Name')]), th([.text('Email')]), th([.text('Age')]), th([.text('Phone')]), th([.text('Access')])])]),
        tbody([
          for (final m in mockTeamData)
            tr([td([.text(m.id)]), td([.text(m.name)]), td([.text(m.email)]), td([.text(m.age)]), td([.text(m.phone)]), td([.text(m.access)])])
        ])
      ])
    ]);
  }
}

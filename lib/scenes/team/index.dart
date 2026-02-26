import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class TeamPage extends StatelessComponent {
  const TeamPage({super.key});

  String icon(String access) {
    switch (access) {
      case 'admin':
        return '🛡';
      case 'manager':
        return '🌐';
      default:
        return '🔓';
    }
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'TEAM', subtitle: 'Managing the Team Members'),
      div(classes: 'card team-table-card', [
        div(classes: 'team-head row center', [
          div(classes: 'team-th cb', [input(attributes: {'type': 'checkbox'})]),
          div(classes: 'team-th', [.text('ID')]),
          div(classes: 'team-th', [.text('Name')]),
          div(classes: 'team-th', [.text('Age')]),
          div(classes: 'team-th', [.text('Phone Number')]),
          div(classes: 'team-th', [.text('Email')]),
          div(classes: 'team-th', [.text('Access Level')]),
        ]),
        for (final m in mockTeamData)
          div(classes: 'team-row row center', [
            div(classes: 'team-td cb', [input(attributes: {'type': 'checkbox'})]),
            div(classes: 'team-td', [.text('${m.id}')]),
            div(classes: 'team-td', [.text(m.name)]),
            div(classes: 'team-td', [.text('${m.age}')]),
            div(classes: 'team-td', [.text(m.phone)]),
            div(classes: 'team-td', [.text(m.email)]),
            div(classes: 'team-td', [
              span(classes: 'team-pill ${m.access}', [
                .text('${icon(m.access)} ${m.access}')
              ])
            ]),
          ]),
        div(classes: 'team-footer row between center', [
          div([], classes: 'muted'),
          div(classes: 'row center muted', [
            .text('Rows per page: 100'),
            span([.text('  •  ')]),
            .text('1-9 of 9'),
            span([.text('  ‹  ›')]),
          ])
        ])
      ])
    ]);
  }
}

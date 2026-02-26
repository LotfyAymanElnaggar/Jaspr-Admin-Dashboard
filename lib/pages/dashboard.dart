import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../components/layout.dart';

class DashboardPage extends StatelessComponent {
  const DashboardPage({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      div(classes: 'grid stats', [
        const StatCard(title: 'Sales', value: '4,321', sub: '+14% this month'),
        const StatCard(title: 'Orders', value: '1,208', sub: '+6% this week'),
        const StatCard(title: 'Customers', value: '892', sub: '+22 new'),
        const StatCard(title: 'Traffic', value: '32k', sub: '+11% growth'),
      ]),
      div(classes: 'grid two', [
        div(classes: 'card', [
          h3([.text('Revenue Overview')]),
          p(classes: 'muted', [.text('Simple placeholder for line chart section.')]),
          div(classes: 'bars', [
            for (final h in [20, 55, 35, 80, 60, 45, 75]) div(attributes: {'style': 'height:${h}px'}, []),
          ])
        ]),
        div(classes: 'card', [
          h3([.text('Recent Activity')]),
          ul([
            li([.text('New order #1293 received')]),
            li([.text('Team member invited: Sarah')]),
            li([.text('Invoice #889 paid')]),
            li([.text('Support ticket resolved')]),
          ])
        ]),
      ])
    ]);
  }
}

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class DashboardPage extends StatelessComponent {
  const DashboardPage({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      h2([.text('DASHBOARD')]),
      p(classes: 'muted', [.text('Welcome to your dashboard')]),
      div(classes: 'grid stats', [
        _stat('Emails Sent', '12,361', '+14%'),
        _stat('Sales Obtained', '431,225', '+21%'),
        _stat('New Clients', '32,441', '+5%'),
        _stat('Traffic Received', '1,325,134', '+43%'),
      ]),
    ]);
  }

  Component _stat(String t, String v, String pct) => div(classes: 'card stat', [
        p(classes: 'muted', [.text(t)]),
        h3([.text(v)]),
        p(classes: 'success', [.text(pct)]),
      ]);
}

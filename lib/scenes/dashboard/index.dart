import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../components/progress_circle.dart';
import '../../components/simple_charts.dart';
import '../../components/stat_box.dart';
import '../../data/mock_data.dart';

class DashboardPage extends StatelessComponent {
  const DashboardPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      div(classes: 'row between center', [
        const HeaderBlock(title: 'DASHBOARD', subtitle: 'Welcome to your dashboard'),
        button(classes: 'btn', [.text('⬇ Download Reports')]),
      ]),
      div(classes: 'grid stats', [
        const div(classes: 'card', [StatBox(title: '12,361', subtitle: 'Emails Sent', progress: '0.75', increase: '+14%', icon: '✉️')]),
        const div(classes: 'card', [StatBox(title: '431,225', subtitle: 'Sales Obtained', progress: '0.50', increase: '+21%', icon: '💰')]),
        const div(classes: 'card', [StatBox(title: '32,441', subtitle: 'New Clients', progress: '0.30', increase: '+5%', icon: '👤')]),
        const div(classes: 'card', [StatBox(title: '1,325,134', subtitle: 'Traffic Received', progress: '0.80', increase: '+43%', icon: '🚦')]),
      ]),
      div(classes: 'grid two-col', [
        div(classes: 'card', [
          div(classes: 'row between center', [
            div([
              p(classes: 'muted', [.text('Revenue Generated')]),
              h3(classes: 'green', [.text('\$59,342.32')]),
            ]),
            button(classes: 'icon-btn', [.text('⬇')]),
          ]),
          const SimpleLineChart(values: [20, 32, 29, 40, 44, 38, 52, 65, 57, 70]),
        ]),
        div(classes: 'card', [
          h3([.text('Recent Transactions')]),
          for (final t in mockTransactions)
            div(classes: 'row between tx', [
              div([
                p(classes: 'green', [.text(t.txId)]),
                p(classes: 'muted', [.text(t.user)]),
              ]),
              p(classes: 'muted', [.text(t.date)]),
              span(classes: 'pill', [.text('\$${t.cost}')]),
            ])
        ])
      ]),
      div(classes: 'grid three-col', [
        div(classes: 'card', [
          h3([.text('الحملة')]),
          const div(classes: 'center-col', [ProgressCircle(size: 120)]),
          p(classes: 'green', [.text('\$48,352 revenue generated')]),
          p(classes: 'muted', [.text('Includes extra misc expenditures and costs')]),
        ]),
        div(classes: 'card', [
          h3([.text('كمية المبيعات')]),
          const SimpleBarChart(values: [14, 28, 39, 25, 41, 55, 60]),
        ]),
        div(classes: 'card', [
          h3([.text('الترافيك حسب المنطقة الجغرافية')]),
          div(classes: 'geo-placeholder', [.text('🌍 Map Placeholder')]),
        ]),
      ])
    ]);
  }
}

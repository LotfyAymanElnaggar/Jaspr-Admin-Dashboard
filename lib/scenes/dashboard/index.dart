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
    return div(classes: 'page dashboard-page', [
      div(classes: 'row between center dashboard-head', [
        const HeaderBlock(title: 'DASHBOARD', subtitle: 'Welcome to your dashboard'),
        button(classes: 'btn dashboard-download', [.text('⬇  DOWNLOAD REPORTS')]),
      ]),

      div(classes: 'grid stats dashboard-stats', [
        const div(classes: 'card stat-card', [StatBox(title: '12,361', subtitle: 'Emails Sent', progress: '0.75', increase: '+14%', icon: '✉️')]),
        const div(classes: 'card stat-card', [StatBox(title: '431,225', subtitle: 'Sales Obtained', progress: '0.50', increase: '+21%', icon: '💰')]),
        const div(classes: 'card stat-card', [StatBox(title: '32,441', subtitle: 'New Clients', progress: '0.30', increase: '+5%', icon: '👥')]),
        const div(classes: 'card stat-card', [StatBox(title: '1,325,134', subtitle: 'Traffic Received', progress: '0.80', increase: '+43%', icon: '⛃')]),
      ]),

      div(classes: 'grid two-col dashboard-mid', [
        div(classes: 'card revenue-card', [
          div(classes: 'row between center', [
            div([
              p(classes: 'muted', [.text('Revenue Generated')]),
              h3(classes: 'green revenue-value', [.text('\$59,342.32')]),
            ]),
            button(classes: 'icon-btn', [.text('⬇')]),
          ]),
          const SimpleLineChart(values: [20, 32, 29, 40, 44, 38, 52, 65, 57, 70]),
        ]),

        div(classes: 'card tx-card', [
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

      div(classes: 'grid three-col dashboard-bottom', [
        div(classes: 'card campaign-card', [
          h3([.text('Campaign')]),
          div(classes: 'center-col', [
            div([], classes: 'campaign-donut'),
          ]),
          p(classes: 'green', [.text('\$48,352 revenue generated')]),
          p(classes: 'muted', [.text('Includes extra misc expenditures and costs')]),
        ]),

        div(classes: 'card sales-card', [
          h3([.text('Sales Quantity')]),
          const SimpleBarChart(values: [14, 28, 39, 25, 41, 55, 60]),
        ]),

        div(classes: 'card geo-mini-card', [
          h3([.text('Geography Based Traffic')]),
          svg(attributes: {'viewBox': '0 0 420 180', 'class': 'geo-svg mini'}, [
            path(attributes: {'d': 'M40 80 L95 60 L130 92 L110 130 L60 125 Z', 'class': 'g1'}, []),
            path(attributes: {'d': 'M145 70 L200 58 L235 98 L220 140 L165 130 Z', 'class': 'g2'}, []),
            path(attributes: {'d': 'M250 78 L305 62 L340 90 L330 138 L270 132 Z', 'class': 'g3'}, []),
          ]),
          div(classes: 'legend row', [
            p([div([], classes: 'dot a'), .text(' low')]),
            p([div([], classes: 'dot b'), .text(' medium')]),
            p([div([], classes: 'dot c'), .text(' high')]),
          ])
        ]),
      ])
    ]);
  }
}

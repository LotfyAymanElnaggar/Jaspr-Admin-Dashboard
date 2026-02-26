import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../components/simple_charts.dart';

class LinePage extends StatelessComponent {
  const LinePage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Line Chart', subtitle: 'Simple Line Chart'),
        div(classes: 'card', [
          const SimpleLineChart(values: [12, 20, 28, 24, 39, 44, 41, 58, 62, 70])
        ])
      ]);
}

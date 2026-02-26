import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../components/simple_charts.dart';

class BarPage extends StatelessComponent {
  const BarPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Bar Chart', subtitle: 'Simple Bar Chart'),
        div(classes: 'card', [
          const SimpleBarChart(values: [24, 40, 18, 52, 61, 44, 73, 55, 38, 47])
        ])
      ]);
}

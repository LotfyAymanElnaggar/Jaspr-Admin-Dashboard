import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/chart_placeholder.dart';
import '../../components/header_block.dart';

class BarPage extends StatelessComponent {
  const BarPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Bar Chart', subtitle: 'Simple Bar Chart'),
        const ChartPlaceholder(title: 'Bar Chart', bars: [12, 19, 40, 36, 25, 50, 45, 28]),
      ]);
}

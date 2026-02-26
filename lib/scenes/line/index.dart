import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/chart_placeholder.dart';
import '../../components/header_block.dart';

class LinePage extends StatelessComponent {
  const LinePage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Line Chart', subtitle: 'Simple Line Chart'),
        const ChartPlaceholder(title: 'Line Chart', bars: [18, 20, 26, 30, 33, 37, 41, 55, 60]),
      ]);
}

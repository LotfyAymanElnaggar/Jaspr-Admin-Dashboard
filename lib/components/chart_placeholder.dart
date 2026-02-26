import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ChartPlaceholder extends StatelessComponent {
  final String title;
  final List<int> bars;
  const ChartPlaceholder({required this.title, this.bars = const [18, 42, 35, 55, 24, 48, 33], super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'card chart', [
      h3([.text(title)]),
      div(classes: 'placeholder-bars', [
        for (final h in bars) div(attributes: {'style': 'height:${h * 2}px'}, []),
      ])
    ]);
  }
}

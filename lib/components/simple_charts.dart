import 'dart:math';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SimpleBarChart extends StatelessComponent {
  final List<int> values;
  const SimpleBarChart({required this.values, super.key});

  @override
  Component build(BuildContext context) {
    final maxV = values.reduce(max).toDouble();
    return div(classes: 'chart-shell', [
      p(classes: 'chart-label', [.text('Y: value')]),
      div(classes: 'chart-wrap', [
        for (int i = 0; i < values.length; i++)
          div(classes: 'bar-col', [
            div(
              classes: 'bar',
              attributes: {'style': 'height:${(values[i] / maxV * 180).round()}px'},
              [],
            ),
            span(classes: 'xlab', [.text('M${i + 1}')]),
          ])
      ]),
      p(classes: 'chart-label', [.text('X: month')]),
    ]);
  }
}

class SimpleLineChart extends StatelessComponent {
  final List<int> values;
  const SimpleLineChart({required this.values, super.key});

  @override
  Component build(BuildContext context) {
    final maxV = values.reduce(max).toDouble();
    final points = <String>[];
    for (int i = 0; i < values.length; i++) {
      final x = (i / (values.length - 1) * 380).round();
      final y = (200 - (values[i] / maxV * 180)).round();
      points.add('$x,$y');
    }
    return div(classes: 'chart-shell', [
      p(classes: 'chart-label', [.text('Trend')]),
      svg(attributes: {'viewBox': '0 0 400 220', 'class': 'line-svg'}, [
        polyline(attributes: {
          'fill': 'none',
          'stroke': '#6870fa',
          'stroke-width': '4',
          'points': points.join(' ')
        }, []),
        for (final p in points)
          circle(attributes: {
            'cx': p.split(',')[0],
            'cy': p.split(',')[1],
            'r': '4',
            'fill': '#4cceac'
          }, []),
      ]),
      p(classes: 'chart-label', [.text('X axis')]),
    ]);
  }
}

class SimplePieChart extends StatelessComponent {
  final List<double> values;
  const SimplePieChart({required this.values, super.key});

  @override
  Component build(BuildContext context) {
    final sum = values.fold<double>(0, (a, b) => a + b);
    final a = (values[0] / sum * 360).round();
    final b = (values[1] / sum * 360).round();
    return div(classes: 'chart-shell', [
      div([], classes: 'pie', attributes: {
        'style': 'background: conic-gradient(#4cceac 0 ${a}deg, #6870fa ${a}deg ${a + b}deg, #a594fd ${a + b}deg 360deg);'
      }),
      div(classes: 'legend', [
        p([div([], classes: 'dot a'), .text(' Segment A')]),
        p([div([], classes: 'dot b'), .text(' Segment B')]),
        p([div([], classes: 'dot c'), .text(' Segment C')]),
      ])
    ]);
  }
}

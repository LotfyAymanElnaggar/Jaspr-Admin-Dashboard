import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'progress_circle.dart';

class StatBox extends StatelessComponent {
  final String title;
  final String subtitle;
  final String progress;
  final String increase;
  final String icon;
  const StatBox({required this.title, required this.subtitle, required this.progress, required this.increase, required this.icon, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'statbox', [
      div(classes: 'row between', [
        div([
          p(classes: 'icon', [.text(icon)]),
          h3([.text(title)]),
        ]),
        ProgressCircle(progress: progress),
      ]),
      div(classes: 'row between', [
        p(classes: 'green', [.text(subtitle)]),
        p(classes: 'green-2', [.text(increase)]),
      ])
    ]);
  }
}

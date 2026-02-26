import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProgressCircle extends StatelessComponent {
  final String progress; // 0..1
  final int size;
  const ProgressCircle({this.progress = '0.75', this.size = 42, super.key});

  @override
  Component build(BuildContext context) {
    final p = double.tryParse(progress) ?? 0.75;
    final angle = (p * 360).round();
    return div(
      classes: 'progress-circle',
      attributes: {
        'style': 'width:${size}px;height:${size}px;--angle:${angle}deg;'
      },
      [],
    );
  }
}

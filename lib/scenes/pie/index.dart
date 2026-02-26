import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class PiePage extends StatelessComponent {
  const PiePage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('PIE PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for pie scene.')]),
      ]);
}

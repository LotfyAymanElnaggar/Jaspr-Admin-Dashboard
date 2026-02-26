import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class BarPage extends StatelessComponent {
  const BarPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('BAR PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for bar scene.')]),
      ]);
}

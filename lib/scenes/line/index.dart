import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class LinePage extends StatelessComponent {
  const LinePage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('LINE PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for line scene.')]),
      ]);
}

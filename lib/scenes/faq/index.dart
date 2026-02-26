import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FaqPage extends StatelessComponent {
  const FaqPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('FAQ PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for faq scene.')]),
      ]);
}

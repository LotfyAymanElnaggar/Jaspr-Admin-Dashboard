import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class GeographyPage extends StatelessComponent {
  const GeographyPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('GEOGRAPHY PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for geography scene.')]),
      ]);
}

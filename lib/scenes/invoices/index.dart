import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class InvoicesPage extends StatelessComponent {
  const InvoicesPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('INVOICES')]),
        p(classes: 'muted', [.text('List of invoice balances')]),
      ]);
}

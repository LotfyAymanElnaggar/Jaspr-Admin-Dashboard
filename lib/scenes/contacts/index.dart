import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactsPage extends StatelessComponent {
  const ContactsPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('CONTACTS')]),
        p(classes: 'muted', [.text('List of contacts for future reference')]),
      ]);
}

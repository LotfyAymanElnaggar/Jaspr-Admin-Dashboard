import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FormPage extends StatelessComponent {
  const FormPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('CREATE USER')]),
        p(classes: 'muted', [.text('Create a new user profile')]),
      ]);
}

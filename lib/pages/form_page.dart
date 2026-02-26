import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FormPage extends StatelessComponent {
  const FormPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'card', [
      h2([.text('Create User')]),
      p(classes: 'muted', [.text('Form layout preview in Jaspr.')]),
      form([
        div(classes: 'form-grid', [
          label([.text('First Name'), input(attributes: {'placeholder': 'Lotfy'})]),
          label([.text('Last Name'), input(attributes: {'placeholder': 'Ayman'})]),
          label([.text('Email'), input(attributes: {'placeholder': 'you@example.com'})]),
          label([.text('Phone'), input(attributes: {'placeholder': '+20 ...'})]),
        ]),
        button(classes: 'btn', [.text('Submit')]),
      ])
    ]);
  }
}

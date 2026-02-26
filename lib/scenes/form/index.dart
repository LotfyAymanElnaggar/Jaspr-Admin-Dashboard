import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class FormPage extends StatefulComponent {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final values = <String, String>{
    'firstName': '',
    'lastName': '',
    'email': '',
    'contact': '',
    'address1': '',
    'address2': '',
  };

  bool submitted = false;

  bool get isValid {
    final email = values['email'] ?? '';
    final hasEmail = email.contains('@') && email.contains('.');
    final hasRequired = values.values.every((v) => v.trim().isNotEmpty);
    return hasRequired && hasEmail;
  }

  String? err(String key) {
    if (!submitted) return null;
    final v = (values[key] ?? '').trim();
    if (v.isEmpty) return 'required';
    if (key == 'email' && !(v.contains('@') && v.contains('.'))) return 'invalid email';
    return null;
  }

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'CREATE USER', subtitle: 'Create a New User Profile'),
      div(classes: 'card', [
        form([
          div(classes: 'form-grid', [
            _field('firstName', 'First Name'),
            _field('lastName', 'Last Name'),
            _field('email', 'Email', span: 2),
            _field('contact', 'Contact Number', span: 2),
            _field('address1', 'Address 1', span: 2),
            _field('address2', 'Address 2', span: 2),
          ]),
          div(classes: 'row between center', [
            if (submitted && !isValid)
              p(classes: 'form-error', [.text('Please fix validation errors before submitting.')])
            else
              div([], classes: 'muted'),
            button(
              classes: 'btn',
              onClick: () {
                setState(() => submitted = true);
                if (isValid) {
                  // success noop for demo parity
                }
              },
              [.text('Create New User')],
            )
          ])
        ])
      ])
    ]);
  }

  Component _field(String key, String lbl, {int span = 1}) {
    final e = err(key);
    return div(classes: 'field span-$span', [
      label([.text(lbl)]),
      input(
        classes: e == null ? null : 'invalid',
        attributes: {'placeholder': lbl, 'value': values[key] ?? ''},
        onInput: (ev) => setState(() => values[key] = (ev as dynamic).value?.toString() ?? ''),
      ),
      if (e != null) p(classes: 'field-error', [.text(e)]),
    ]);
  }
}

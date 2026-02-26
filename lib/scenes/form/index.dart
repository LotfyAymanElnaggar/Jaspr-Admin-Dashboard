import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class FormPage extends StatelessComponent {
  const FormPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'CREATE USER', subtitle: 'Create a New User Profile'),
      div(classes: 'card', [
        form([
          div(classes: 'form-grid', [
            _field('First Name'),
            _field('Last Name'),
            _field('Email', span: 2),
            _field('Contact Number', span: 2),
            _field('Address 1', span: 2),
            _field('Address 2', span: 2),
          ]),
          div(classes: 'row end', [button(classes: 'btn', [.text('Create New User')])])
        ])
      ])
    ]);
  }

  Component _field(String lbl, {int span = 1}) => div(classes: 'field span-$span', [
        label([.text(lbl)]),
        input(attributes: {'placeholder': lbl}),
      ]);
}

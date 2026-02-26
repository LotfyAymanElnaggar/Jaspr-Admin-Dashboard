import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class ContactsPage extends StatelessComponent {
  const ContactsPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'CONTACTS', subtitle: 'List of Contacts for Future Reference'),
      div(classes: 'card contact-table-card', [
        div(classes: 'contact-head row center', [
          div(classes: 'contact-th', [.text('ID')]),
          div(classes: 'contact-th', [.text('Registrar ID')]),
          div(classes: 'contact-th', [.text('Name')]),
          div(classes: 'contact-th', [.text('Age')]),
          div(classes: 'contact-th', [.text('Phone Number')]),
          div(classes: 'contact-th', [.text('Email')]),
          div(classes: 'contact-th', [.text('Address')]),
          div(classes: 'contact-th', [.text('City')]),
          div(classes: 'contact-th', [.text('Zip Code')]),
        ]),
        for (final c in mockContacts)
          div(classes: 'contact-row row center', [
            div(classes: 'contact-td', [.text('${c.id}')]),
            div(classes: 'contact-td', [.text('${c.registrarId}')]),
            div(classes: 'contact-td name', [.text(c.name)]),
            div(classes: 'contact-td', [.text('${c.age}')]),
            div(classes: 'contact-td', [.text(c.phone)]),
            div(classes: 'contact-td', [.text(c.email)]),
            div(classes: 'contact-td', [.text(c.address)]),
            div(classes: 'contact-td', [.text(c.city)]),
            div(classes: 'contact-td', [.text(c.zipCode)]),
          ]),
      ])
    ]);
  }
}

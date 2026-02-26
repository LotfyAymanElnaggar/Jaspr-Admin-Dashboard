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
      div(classes: 'card table-wrap', [
        table([
          thead([
            tr([
              th([.text('ID')]), th([.text('Registrar ID')]), th([.text('Name')]), th([.text('Age')]), th([.text('Phone Number')]),
              th([.text('Email')]), th([.text('Address')]), th([.text('City')]), th([.text('Zip Code')]),
            ])
          ]),
          tbody([
            for (final c in mockContacts)
              tr([
                td([.text('${c.id}')]), td([.text('${c.registrarId}')]), td(classes: 'green', [.text(c.name)]), td([.text('${c.age}')]), td([.text(c.phone)]),
                td([.text(c.email)]), td([.text(c.address)]), td([.text(c.city)]), td([.text(c.zipCode)]),
              ])
          ])
        ])
      ])
    ]);
  }
}

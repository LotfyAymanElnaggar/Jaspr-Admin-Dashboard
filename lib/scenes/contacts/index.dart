import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/data_table.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class ContactsPage extends StatelessComponent {
  const ContactsPage({super.key});

  @override
  Component build(BuildContext context) {
    final rows = mockContacts
        .map((c) => {
              'id': '${c.id}',
              'registrarId': '${c.registrarId}',
              'name': c.name,
              'age': '${c.age}',
              'phone': c.phone,
              'email': c.email,
              'address': c.address,
              'city': c.city,
              'zipCode': c.zipCode,
            })
        .toList();

    return div(classes: 'page', [
      const HeaderBlock(title: 'CONTACTS', subtitle: 'List of Contacts for Future Reference'),
      div(classes: 'card', [
        DataTableX(
          columns: const [
            TableColumn('id', 'ID'),
            TableColumn('registrarId', 'Registrar ID'),
            TableColumn('name', 'Name'),
            TableColumn('age', 'Age'),
            TableColumn('phone', 'Phone Number'),
            TableColumn('email', 'Email'),
            TableColumn('address', 'Address'),
            TableColumn('city', 'City'),
            TableColumn('zipCode', 'Zip Code'),
          ],
          rows: rows,
        )
      ])
    ]);
  }
}

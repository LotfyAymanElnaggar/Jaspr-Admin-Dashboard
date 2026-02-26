import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/data_table.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class InvoicesPage extends StatelessComponent {
  const InvoicesPage({super.key});

  @override
  Component build(BuildContext context) {
    final rows = mockInvoices
        .map((i) => {
              'id': '${i.id}',
              'name': i.name,
              'phone': i.phone,
              'email': i.email,
              'cost': '\$${i.cost}',
              'date': i.date,
            })
        .toList();

    return div(classes: 'page', [
      const HeaderBlock(title: 'INVOICES', subtitle: 'List of Invoice Balances'),
      div(classes: 'card', [
        DataTableX(
          selectable: true,
          columns: const [
            TableColumn('id', 'ID'),
            TableColumn('name', 'Name'),
            TableColumn('phone', 'Phone Number'),
            TableColumn('email', 'Email'),
            TableColumn('cost', 'Cost'),
            TableColumn('date', 'Date'),
          ],
          rows: rows,
        )
      ])
    ]);
  }
}

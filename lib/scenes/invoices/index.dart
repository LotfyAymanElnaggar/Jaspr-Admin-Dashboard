import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';
import '../../data/mock_data.dart';

class InvoicesPage extends StatelessComponent {
  const InvoicesPage({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'INVOICES', subtitle: 'List of Invoice Balances'),
      div(classes: 'card table-wrap', [
        table([
          thead([
            tr([th([.text('ID')]), th([.text('Name')]), th([.text('Phone Number')]), th([.text('Email')]), th([.text('Cost')]), th([.text('Date')])])
          ]),
          tbody([
            for (final i in mockInvoices)
              tr([
                td([.text('${i.id}')]),
                td(classes: 'green', [.text(i.name)]),
                td([.text(i.phone)]),
                td([.text(i.email)]),
                td(classes: 'green', [.text('\$${i.cost}')]),
                td([.text(i.date)]),
              ])
          ])
        ])
      ])
    ]);
  }
}

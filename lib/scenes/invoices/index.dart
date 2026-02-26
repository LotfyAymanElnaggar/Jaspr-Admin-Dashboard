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
      div(classes: 'card invoice-table-card', [
        div(classes: 'invoice-head row center', [
          div(classes: 'invoice-th cb', [input(attributes: {'type': 'checkbox'})]),
          div(classes: 'invoice-th', [.text('ID')]),
          div(classes: 'invoice-th', [.text('Name')]),
          div(classes: 'invoice-th', [.text('Phone Number')]),
          div(classes: 'invoice-th', [.text('Email')]),
          div(classes: 'invoice-th', [.text('Cost')]),
          div(classes: 'invoice-th', [.text('Date')]),
        ]),
        for (final i in mockInvoices)
          div(classes: 'invoice-row row center', [
            div(classes: 'invoice-td cb', [input(attributes: {'type': 'checkbox'})]),
            div(classes: 'invoice-td', [.text('${i.id}')]),
            div(classes: 'invoice-td name', [.text(i.name)]),
            div(classes: 'invoice-td', [.text(i.phone)]),
            div(classes: 'invoice-td', [.text(i.email)]),
            div(classes: 'invoice-td cost', [.text('\$${i.cost}')]),
            div(classes: 'invoice-td', [.text(i.date)]),
          ]),
      ])
    ]);
  }
}

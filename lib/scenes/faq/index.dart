import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class FaqPage extends StatelessComponent {
  const FaqPage({super.key});

  @override
  Component build(BuildContext context) {
    final qs = [
      'An Important Question',
      'Another Important Question',
      'Your Favorite Question',
      'Some Random Question',
      'The Final Question',
    ];

    return div(classes: 'page', [
      const HeaderBlock(title: 'FAQ', subtitle: 'Frequently Asked Questions Page'),
      for (final q in qs)
        details(classes: 'card faq', [
          summary([.text(q)]),
          p([.text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse malesuada lacus ex, sit amet blandit leo lobortis eget.')]),
        ])
    ]);
  }
}

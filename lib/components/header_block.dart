import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeaderBlock extends StatelessComponent {
  final String title;
  final String subtitle;
  const HeaderBlock({required this.title, required this.subtitle, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'page-header', [
      h2(classes: 'title', [.text(title)]),
      p(classes: 'subtitle', [.text(subtitle)]),
    ]);
  }
}

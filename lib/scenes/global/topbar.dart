import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Topbar extends StatelessComponent {
  const Topbar({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'topbar', [
      div(classes: 'search', [
        input(attributes: {'placeholder': 'Search'}),
        button([.text('🔎')]),
      ]),
      div(classes: 'top-icons', [
        button([.text('🌙')]),
        button([.text('🔔')]),
        button([.text('⚙️')]),
        button([.text('👤')]),
      ])
    ]);
  }
}

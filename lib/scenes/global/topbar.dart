import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Topbar extends StatelessComponent {
  final void Function() onToggleTheme;
  final void Function() onToggleSidebar;

  const Topbar({required this.onToggleTheme, required this.onToggleSidebar, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'topbar', [
      div(classes: 'search', [
        input(attributes: {'placeholder': 'Search'}),
        button([.text('🔎')]),
      ]),
      div(classes: 'top-icons', [
        button(onClick: onToggleSidebar, [.text('☰')]),
        button(onClick: onToggleTheme, [.text('🌓')]),
        button([.text('🔔')]),
        button([.text('⚙️')]),
        button([.text('👤')]),
      ])
    ]);
  }
}

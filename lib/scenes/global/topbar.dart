import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Topbar extends StatelessComponent {
  final void Function() onToggleTheme;
  final void Function() onToggleSidebar;

  const Topbar({required this.onToggleTheme, required this.onToggleSidebar, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'topbar topbar-exact', [
      div(classes: 'search search-exact', [
        input(attributes: {'placeholder': 'Search'}),
        button(classes: 'search-btn', [.text('🔎')]),
      ]),
      div(classes: 'top-icons top-icons-exact', [
        button(classes: 'icon-btn top-btn', onClick: onToggleSidebar, [.text('☰')]),
        button(classes: 'icon-btn top-btn', onClick: onToggleTheme, [.text('◐')]),
        button(classes: 'icon-btn top-btn', [.text('🔔')]),
        button(classes: 'icon-btn top-btn', [.text('⚙')]),
        button(classes: 'icon-btn top-btn', [.text('👤')]),
      ])
    ]);
  }
}

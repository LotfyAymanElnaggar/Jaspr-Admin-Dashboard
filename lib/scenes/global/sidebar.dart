import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class SidebarSection {
  final String title;
  final List<(String label, String path)> items;
  const SidebarSection(this.title, this.items);
}

class Sidebar extends StatelessComponent {
  final bool collapsed;
  const Sidebar({required this.collapsed, super.key});

  @override
  Component build(BuildContext context) {
    final location = RouteState.of(context).location;
    final sections = const [
      SidebarSection('Data', [
        ('Manage Team', '/team'),
        ('Contacts Information', '/contacts'),
        ('Invoices Balances', '/invoices'),
      ]),
      SidebarSection('Pages', [
        ('Profile Form', '/form'),
        ('Calendar', '/calendar'),
        ('FAQ Page', '/faq'),
      ]),
      SidebarSection('Charts', [
        ('Bar Chart', '/bar'),
        ('Pie Chart', '/pie'),
        ('Line Chart', '/line'),
        ('Geography Chart', '/geography'),
      ]),
    ];

    return aside(classes: collapsed ? 'sidebar collapsed' : 'sidebar', [
      div(classes: 'logo-wrap', [h2(classes: 'brand', [.text(collapsed ? 'AD' : 'ADMINIS')])]),
      if (!collapsed)
        div(classes: 'profile-card', [
          div(classes: 'avatar', [.text('ER')]),
          h3([.text('Ed Roh')]),
          p(classes: 'accent', [.text('VP Fancy Admin')]),
        ]),
      Link(to: '/', child: div(classes: location == '/' ? 'menu-item active' : 'menu-item', [.text(collapsed ? '🏠' : 'Dashboard')])),
      for (final section in sections) ...[
        if (!collapsed) p(classes: 'section-title', [.text(section.title)]),
        for (final item in section.items)
          Link(
            to: item.$2,
            child: div(
              classes: location == item.$2 ? 'menu-item active' : 'menu-item',
              [.text(collapsed ? _iconFor(item.$2) : item.$1)],
            ),
          ),
      ]
    ]);
  }

  String _iconFor(String path) {
    switch (path) {
      case '/team':
        return '👥';
      case '/contacts':
        return '📇';
      case '/invoices':
        return '🧾';
      case '/form':
        return '📝';
      case '/calendar':
        return '📅';
      case '/faq':
        return '❓';
      case '/bar':
        return '📊';
      case '/pie':
        return '🥧';
      case '/line':
        return '📈';
      case '/geography':
        return '🌍';
      default:
        return '•';
    }
  }
}

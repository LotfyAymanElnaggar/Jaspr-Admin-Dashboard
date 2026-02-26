import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class DashboardLayout extends StatelessComponent {
  final Component child;
  const DashboardLayout({required this.child, super.key});

  @override
  Component build(BuildContext context) {
    final path = RouteState.of(context).location;
    final links = [
      (label: 'Dashboard', path: '/'),
      (label: 'Team', path: '/team'),
      (label: 'Contacts', path: '/contacts'),
      (label: 'Invoices', path: '/invoices'),
      (label: 'Bar', path: '/bar'),
      (label: 'Line', path: '/line'),
      (label: 'Pie', path: '/pie'),
      (label: 'FAQ', path: '/faq'),
      (label: 'Form', path: '/form'),
    ];

    return div(classes: 'app-shell', [
      aside(classes: 'sidebar', [
        h2(classes: 'brand', [.text('Jaspr Admin')]),
        p(classes: 'muted', [.text('Dart + Jaspr')]),
        nav(classes: 'menu', [
          for (final l in links)
            Link(
              to: l.path,
              child: div(classes: path == l.path ? 'menu-item active' : 'menu-item', [.text(l.label)]),
            ),
        ]),
      ]),
      div(classes: 'main-area', [
        header(classes: 'topbar', [
          h1([.text('React Admin Dashboard → Jaspr')]),
          p(classes: 'muted', [.text('Converted UI structure with core pages and widgets')]),
        ]),
        div(classes: 'content', [child]),
      ]),
    ]);
  }
}

class StatCard extends StatelessComponent {
  final String title;
  final String value;
  final String sub;
  const StatCard({required this.title, required this.value, required this.sub, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'card stat', [
      p(classes: 'muted', [.text(title)]),
      h3([.text(value)]),
      p(classes: 'success', [.text(sub)]),
    ]);
  }
}

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'scenes/global/sidebar.dart';
import 'scenes/global/topbar.dart';
import 'scenes/dashboard/index.dart';
import 'scenes/team/index.dart';
import 'scenes/contacts/index.dart';
import 'scenes/invoices/index.dart';
import 'scenes/form/index.dart';
import 'scenes/bar/index.dart';
import 'scenes/pie/index.dart';
import 'scenes/line/index.dart';
import 'scenes/faq/index.dart';
import 'scenes/calendar/index.dart';
import 'scenes/geography/index.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(routes: [
      ShellRoute(
        builder: (context, state, child) => div(classes: 'app-shell', [
          const Sidebar(),
          div(classes: 'main-area', [
            const Topbar(),
            div(classes: 'content', [child]),
          ]),
        ]),
        routes: [
          Route(path: '/', title: 'Dashboard', builder: (context, state) => const DashboardPage()),
          Route(path: '/team', title: 'Team', builder: (context, state) => const TeamPage()),
          Route(path: '/contacts', title: 'Contacts', builder: (context, state) => const ContactsPage()),
          Route(path: '/invoices', title: 'Invoices', builder: (context, state) => const InvoicesPage()),
          Route(path: '/form', title: 'Form', builder: (context, state) => const FormPage()),
          Route(path: '/bar', title: 'Bar', builder: (context, state) => const BarPage()),
          Route(path: '/pie', title: 'Pie', builder: (context, state) => const PiePage()),
          Route(path: '/line', title: 'Line', builder: (context, state) => const LinePage()),
          Route(path: '/faq', title: 'FAQ', builder: (context, state) => const FaqPage()),
          Route(path: '/calendar', title: 'Calendar', builder: (context, state) => const CalendarPage()),
          Route(path: '/geography', title: 'Geography', builder: (context, state) => const GeographyPage()),
        ],
      ),
    ]);
  }
}

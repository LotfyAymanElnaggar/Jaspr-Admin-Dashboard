import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/layout.dart';
import 'pages/dashboard.dart';
import 'pages/form_page.dart';
import 'pages/simple_pages.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Router(routes: [
      ShellRoute(
        builder: (context, state, child) => DashboardLayout(child: child),
        routes: [
          Route(path: '/', title: 'Dashboard', builder: (context, state) => const DashboardPage()),
          Route(
            path: '/team',
            title: 'Team',
            builder: (context, state) => const SimplePage(title: 'Team Management', rows: [
              ('Lotfy', 'Admin'),
              ('Mona', 'Manager'),
              ('Ahmed', 'Support'),
            ]),
          ),
          Route(
            path: '/contacts',
            title: 'Contacts',
            builder: (context, state) => const SimplePage(title: 'Contacts', rows: [
              ('Clinic A', 'Active'),
              ('Clinic B', 'Pending'),
              ('Clinic C', 'Active'),
            ]),
          ),
          Route(
            path: '/invoices',
            title: 'Invoices',
            builder: (context, state) => const SimplePage(title: 'Invoices', rows: [
              ('INV-1001', 'Paid'),
              ('INV-1002', 'Pending'),
              ('INV-1003', 'Overdue'),
            ]),
          ),
          Route(path: '/bar', title: 'Bar', builder: (context, state) => const SimplePage(title: 'Bar Charts', rows: [('Q1', '120'), ('Q2', '180')])) ,
          Route(path: '/line', title: 'Line', builder: (context, state) => const SimplePage(title: 'Line Charts', rows: [('Jan', '32'), ('Feb', '54')])) ,
          Route(path: '/pie', title: 'Pie', builder: (context, state) => const SimplePage(title: 'Pie Charts', rows: [('Sales', '42%'), ('Services', '58%')])) ,
          Route(path: '/faq', title: 'FAQ', builder: (context, state) => const SimplePage(title: 'FAQ', rows: [('How to deploy?', 'Use jaspr build'), ('How to style?', 'Edit web/styles.css')])) ,
          Route(path: '/form', title: 'Form', builder: (context, state) => const FormPage()),
        ],
      ),
    ]);
  }
}

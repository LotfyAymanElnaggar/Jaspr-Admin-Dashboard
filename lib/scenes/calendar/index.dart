import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CalendarPage extends StatelessComponent {
  const CalendarPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'card', [
        h2([.text('CALENDAR PAGE')]),
        p(classes: 'muted', [.text('Parity placeholder for calendar scene.')]),
      ]);
}

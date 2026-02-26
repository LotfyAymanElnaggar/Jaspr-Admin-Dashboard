import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class CalendarPage extends StatelessComponent {
  const CalendarPage({super.key});

  @override
  Component build(BuildContext context) {
    final events = [
      ('All-day event', '2022-09-14'),
      ('Timed event', '2022-09-28'),
    ];

    return div(classes: 'page', [
      const HeaderBlock(title: 'Calendar', subtitle: 'Full Calendar Interactive Page'),
      div(classes: 'calendar-layout', [
        div(classes: 'card', [
          h3([.text('Events')]),
          for (final e in events)
            div(classes: 'event-item', [
              p([.text(e.$1)]),
              p(classes: 'muted', [.text(e.$2)]),
            ])
        ]),
        div(classes: 'card calendar-grid', [
          h3([.text('Month View')]),
          div(classes: 'month-grid', [
            for (int d = 1; d <= 30; d++)
              div(classes: 'day', [
                span([.text('$d')]),
              ])
          ])
        ])
      ])
    ]);
  }
}

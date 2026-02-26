import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class CalendarPage extends StatefulComponent {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final List<(String title, String date)> events = [
    ('All-day event', '2022-09-14'),
    ('Timed event', '2022-09-28'),
  ];

  int seed = 1;
  String view = 'month';

  @override
  Component build(BuildContext context) {
    return div(classes: 'page', [
      const HeaderBlock(title: 'Calendar', subtitle: 'Full Calendar Interactive Page'),
      div(classes: 'row', [
        button(classes: view == 'month' ? 'btn' : 'icon-btn', onClick: () => setState(() => view = 'month'), [.text('Month')]),
        button(classes: view == 'week' ? 'btn' : 'icon-btn', onClick: () => setState(() => view = 'week'), [.text('Week')]),
        button(classes: view == 'day' ? 'btn' : 'icon-btn', onClick: () => setState(() => view = 'day'), [.text('Day')]),
      ]),
      div(classes: 'calendar-layout', [
        div(classes: 'card', [
          h3([.text('Events')]),
          for (int i = 0; i < events.length; i++)
            div(classes: 'event-item row between center', [
              div([
                p([.text(events[i].$1)]),
                p(classes: 'muted', [.text(events[i].$2)]),
              ]),
              button(classes: 'icon-btn', onClick: () => setState(() => events.removeAt(i)), [.text('🗑')])
            ]),
          hr(),
          button(
            classes: 'btn',
            onClick: () => setState(() {
              final day = (10 + seed).toString().padLeft(2, '0');
              events.add(('New Event $seed', '2022-09-$day'));
              seed++;
            }),
            [.text('Add Demo Event')],
          )
        ]),
        div(classes: 'card calendar-grid', [
          h3([.text('${view[0].toUpperCase()}${view.substring(1)} View')]),
          if (view == 'month')
            div(classes: 'month-grid', [
              for (int d = 1; d <= 30; d++)
                div(classes: 'day', [
                  span([.text('$d')]),
                  if (events.any((e) => e.$2.endsWith('-${d.toString().padLeft(2, '0')}')))
                    p(classes: 'tiny-dot', [.text('•')]),
                ])
            ])
          else if (view == 'week')
            div(classes: 'week-grid', [for (final d in ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']) div(classes: 'slot', [p([.text(d)])])])
          else
            div(classes: 'day-grid', [for (int h = 8; h <= 20; h++) div(classes: 'slot', [p([.text('$h:00')])])])
        ])
      ])
    ]);
  }
}

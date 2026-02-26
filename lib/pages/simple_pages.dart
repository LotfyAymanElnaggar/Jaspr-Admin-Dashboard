import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SimplePage extends StatelessComponent {
  final String title;
  final List<(String, String)> rows;
  const SimplePage({required this.title, required this.rows, super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'card', [
      h2([.text(title)]),
      p(classes: 'muted', [.text('Jaspr implementation of this admin module.')]),
      table([
        thead([
          tr([
            th([.text('Name')]),
            th([.text('Status')]),
          ])
        ]),
        tbody([
          for (final r in rows)
            tr([
              td([.text(r.$1)]),
              td([.text(r.$2)]),
            ])
        ])
      ])
    ]);
  }
}

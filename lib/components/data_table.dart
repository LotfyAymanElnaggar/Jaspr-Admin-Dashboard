import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TableColumn {
  final String key;
  final String label;
  const TableColumn(this.key, this.label);
}

class DataTableX extends StatefulComponent {
  final List<TableColumn> columns;
  final List<Map<String, String>> rows;
  final bool selectable;
  const DataTableX({required this.columns, required this.rows, this.selectable = false, super.key});

  @override
  State<DataTableX> createState() => _DataTableXState();
}

class _DataTableXState extends State<DataTableX> {
  String sortKey = '';
  bool asc = true;
  int page = 1;
  final int perPage = 7;
  final Set<String> selected = {};
  String query = '';

  List<Map<String, String>> get _rows {
    var list = [...component.rows];

    if (query.trim().isNotEmpty) {
      final q = query.toLowerCase();
      list = list.where((r) => r.values.any((v) => v.toLowerCase().contains(q))).toList();
    }

    if (sortKey.isNotEmpty) {
      list.sort((a, b) {
        final av = (a[sortKey] ?? '');
        final bv = (b[sortKey] ?? '');
        return asc ? av.compareTo(bv) : bv.compareTo(av);
      });
    }

    return list;
  }

  @override
  Component build(BuildContext context) {
    final rows = _rows;
    final totalPages = (rows.length / perPage).ceil().clamp(1, 999);
    if (page > totalPages) page = totalPages;
    final start = (page - 1) * perPage;
    final end = (start + perPage).clamp(0, rows.length);
    final pageRows = rows.sublist(start, end);

    return div([
      div(classes: 'table-toolbar row between center', [
        input(
          classes: 'table-search',
          attributes: {'placeholder': 'Filter...', 'value': query},
          onInput: (e) => setState(() {
            query = (e as dynamic).value?.toString() ?? '';
            page = 1;
          }),
        ),
        div(classes: 'row center', [
          button(classes: 'icon-btn', [.text('⤓ CSV')]),
          button(classes: 'icon-btn', [.text('☷ Columns')]),
          button(classes: 'icon-btn', [.text('⛃ Density')]),
        ])
      ]),

      div(classes: 'table-wrap', [
        table([
          thead([
            tr([
              if (component.selectable) th([.text('✓')]),
              for (final c in component.columns)
                th([
                  button(
                    classes: 'th-btn',
                    onClick: () => setState(() {
                      if (sortKey == c.key) {
                        asc = !asc;
                      } else {
                        sortKey = c.key;
                        asc = true;
                      }
                    }),
                    [.text('${c.label}${sortKey == c.key ? (asc ? ' ↑' : ' ↓') : ''}')],
                  )
                ]),
            ])
          ]),
          tbody([
            for (final r in pageRows)
              tr([
                if (component.selectable)
                  td([
                    input(
                      attributes: {
                        'type': 'checkbox',
                        if (selected.contains(r['id'] ?? '')) 'checked': 'checked'
                      },
                      onChange: (_) => setState(() {
                        final id = r['id'] ?? '';
                        if (selected.contains(id)) {
                          selected.remove(id);
                        } else {
                          selected.add(id);
                        }
                      }),
                    )
                  ]),
                for (final c in component.columns) td([.text(r[c.key] ?? '')]),
              ])
          ])
        ])
      ]),
      div(classes: 'row between center', [
        p(classes: 'muted', [.text('Selected: ${selected.length} • ${rows.length} rows')]),
        div(classes: 'row center', [
          button(classes: 'icon-btn', onClick: page > 1 ? () => setState(() => page--) : null, [.text('←')]),
          p([.text('Page $page / $totalPages')]),
          button(classes: 'icon-btn', onClick: page < totalPages ? () => setState(() => page++) : null, [.text('→')]),
        ])
      ])
    ]);
  }
}

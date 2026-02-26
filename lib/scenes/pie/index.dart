import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class PiePage extends StatelessComponent {
  const PiePage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Pie Chart', subtitle: 'Simple Pie Chart'),
        div(classes: 'card pie-wrap', [
          div([], classes: 'pie'),
          div(classes: 'legend', [
            p([div([], classes: 'dot a'), .text(' hot dog')]),
            p([div([], classes: 'dot b'), .text(' burger')]),
            p([div([], classes: 'dot c'), .text(' kebab')]),
          ])
        ])
      ]);
}

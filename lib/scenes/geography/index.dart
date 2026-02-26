import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class GeographyPage extends StatelessComponent {
  const GeographyPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Geography', subtitle: 'Simple Geography Chart'),
        div(classes: 'card geo-frame', [
          div(classes: 'geo-placeholder large', [.text('🌍 Geography Visualization Placeholder')])
        ])
      ]);
}

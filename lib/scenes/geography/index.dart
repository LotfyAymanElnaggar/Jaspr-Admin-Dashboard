import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../../components/header_block.dart';

class GeographyPage extends StatelessComponent {
  const GeographyPage({super.key});
  @override
  Component build(BuildContext context) => div(classes: 'page', [
        const HeaderBlock(title: 'Geography', subtitle: 'Simple Geography Chart'),
        div(classes: 'card geo-frame', [
          svg(attributes: {'viewBox': '0 0 800 360', 'class': 'geo-svg'}, [
            path(attributes: {'d': 'M92 140 L180 120 L250 150 L230 210 L150 220 Z', 'class': 'g1'}, []),
            path(attributes: {'d': 'M260 130 L330 120 L380 180 L350 240 L280 220 Z', 'class': 'g2'}, []),
            path(attributes: {'d': 'M390 150 L460 120 L530 150 L520 220 L440 230 Z', 'class': 'g3'}, []),
            path(attributes: {'d': 'M540 140 L620 135 L670 180 L640 245 L560 225 Z', 'class': 'g4'}, []),
          ]),
          div(classes: 'legend row', [
            p([div([], classes: 'dot a'), .text(' low')]),
            p([div([], classes: 'dot b'), .text(' medium')]),
            p([div([], classes: 'dot c'), .text(' high')]),
          ])
        ])
      ]);
}

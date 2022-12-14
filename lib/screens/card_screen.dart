import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card')),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard1(),
              CustomCard2(
                  title: 'mars',
                  url:
                      'https://cdn.mos.cms.futurecdn.net/kCbvedK262UGLXCLFeW5oS.jpg'),
              CustomCard2(
                  title: 'sunset',
                  url:
                      'https://cdn.vox-cdn.com/thumbor/Al48-pEnyIn2rlgKX7MIHNmlE68=/0x0:5563x3709/1200x800/filters:focal(2302x1311:3192x2201)/cdn.vox-cdn.com/uploads/chorus_image/image/65752607/1048232144.jpg.0.jpg')
            ]));
  }
}

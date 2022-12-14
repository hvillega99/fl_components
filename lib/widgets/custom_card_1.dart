import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      const ListTile(
          leading: Icon(Icons.album, color: AppTheme.primaryColor),
          title: Text('The Enchanted Nightingale'),
          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.')),
      Padding(
        padding: const EdgeInsets.only(right: 1.5),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(onPressed: () {}, child: const Text('Ok')),
          TextButton(onPressed: () {}, child: const Text('Cancel')),
        ]),
      )
    ]));
  }
}

import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  final options = const ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView')),
        body: ListView.separated(
            itemBuilder: ((context, index) => ListTile(
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: AppTheme.primaryColor),
                onTap: () => {})),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}

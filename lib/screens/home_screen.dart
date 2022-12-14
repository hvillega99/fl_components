import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes en Flutter')),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(AppRoutes.menuOptions[i].name),
                leading: Icon(AppRoutes.menuOptions[i].icon,
                    color: AppTheme.primaryColor),
                onTap: () => {
                  Navigator.pushNamed(context, AppRoutes.menuOptions[i].route),
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}

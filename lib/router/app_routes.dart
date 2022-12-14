import 'package:fl_components/models/models.dart';

import '../screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const inicialRoute = 'home';

  static final menuOptions = <MenuOption>[
    /* MenuOption(
        name: 'Home',
        icon: Icons.home,
        route: 'home',
        screen: const HomeScreen()), */
    MenuOption(
        name: 'ListView',
        icon: Icons.list,
        route: 'listview',
        screen: const ListViewScreen()),
    MenuOption(
        name: 'Card',
        route: 'card',
        icon: Icons.card_membership,
        screen: const CardScreen()),
    MenuOption(
        name: 'Alert',
        route: 'alert',
        icon: Icons.notifications,
        screen: const AlertScreen()),
    MenuOption(
        name: 'Avatar',
        route: 'avatar',
        icon: Icons.account_circle,
        screen: const AvatarScreen()),
    MenuOption(
        name: 'Animated',
        route: 'animated',
        icon: Icons.play_arrow,
        screen: const AnimatedScreen()),
    MenuOption(
        name: 'Inputs',
        route: 'inputs',
        icon: Icons.input,
        screen: const InputsScreen()),
    MenuOption(
        name: 'Slider',
        route: 'slider',
        icon: Icons.slideshow,
        screen: const SliderScreen()),
    MenuOption(
        name: 'Infinite Scroll',
        route: 'listview_builder',
        icon: Icons.build_circle,
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final routes = <String, Widget Function(BuildContext)>{};

    routes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      routes[option.route] = (context) => option.screen;
    }

    return routes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview': (BuildContext context) => const ListViewScreen()
  }; */
}

import 'package:flutter/material.dart';

enum NavigationsMenu { home, settings, notFound }

extension NavigationOptionsExtension on NavigationsMenu {
  NavigationOption get option => NavigationOption.from(this);
}

abstract class NavigationOption {
  IconData get icon;
  String get label;
  String get route;

  static List<NavigationOption> get values => <NavigationsMenu>[
        NavigationsMenu.home,
        NavigationsMenu.settings,
      ].map((e) => e.option).toList();

  static int getSelectedIndex(String location) {
    return values.indexWhere((element) => element.route == location);
  }

  static NavigationOption from(NavigationsMenu option) {
    return switch (option) {
      NavigationsMenu.home => HomeNavigationOption(),
      NavigationsMenu.settings => SettingsNavigationOption(),
      NavigationsMenu.notFound => NotFoundNavigationOption()
    };
  }
}

class HomeNavigationOption implements NavigationOption {
  @override
  IconData get icon => Icons.home;

  @override
  String get label => 'Lista de Proyectos';

  @override
  String get route => '/';
}

class SettingsNavigationOption implements NavigationOption {
  @override
  IconData get icon => Icons.settings;

  @override
  String get label => 'Configuración';

  @override
  String get route => '/settings';
}

class NotFoundNavigationOption implements NavigationOption {
  @override
  IconData get icon => Icons.error;

  @override
  String get label => 'Página no encontrada';

  @override
  String get route => '/404';
}

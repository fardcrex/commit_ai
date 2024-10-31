import 'package:commit_ai/presentation/panel/widget/navigation_menu/navigation_options.dart';
import 'package:commit_ai/presentation/panel/widget/navigation_panel_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Layout raíz que contiene la estructura base
class RootLayout extends StatefulWidget {
  const RootLayout({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  State<RootLayout> createState() => _RootLayoutState();
}

class _RootLayoutState extends State<RootLayout> {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return isMobile
        ? Scaffold(
            appBar: AppBar(
              title: const Text('Mis Proyectos'),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Color(0xFF3665F4),
                  ),
                  onPressed: () {},
                  tooltip: 'Crear Proyecto',
                ),
              ],
            ),
            drawer: const NavigationStatePanel(),
            body: Expanded(child: widget.child),
          )
        : Scaffold(
            body: Row(
              children: [
                const NavigationStatePanel(),
                Expanded(child: widget.child),
              ],
            ),
          );
  }
}

class NavigationStatePanel extends StatelessWidget {
  const NavigationStatePanel({super.key});

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;

    return NavigationPanelDrawer(
      options: NavigationOption.values,
      onTabOption: (menu) => GoRouter.of(context).go(menu.route),
      selectedIndex: NavigationOption.getSelectedIndex(location),
    );
  }
}

import 'package:commit_ai/presentation/panel/widget/navigation_menu/navigation_options.dart';
import 'package:flutter/material.dart';

class NavigationPanelDrawer extends StatelessWidget {
  const NavigationPanelDrawer({
    required this.options,
    required this.selectedIndex,
    required this.onTabOption,
    super.key,
  });

  final List<NavigationOption> options;

  final int selectedIndex;

  final void Function(NavigationOption) onTabOption;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    return NavigationDrawer(
      backgroundColor: const Color(0xFF362a75), // Fondo del menú lateral
      selectedIndex: selectedIndex,
      indicatorColor: const Color(0xFF3665F4),
      onDestinationSelected: (value) {
        //ocultar drawer
        if (isMobile) Navigator.of(context).pop();
        onTabOption(options[value]);
      },
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Commit AI',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const Divider(color: Colors.white54), // Línea divisoria

        ...options.map((option) {
          return NavigationDrawerDestination(
            icon: Icon(option.icon, color: Colors.white),
            label: Text(
              option.label,
              style: const TextStyle(color: Colors.white),
            ),
          );
        }),
      ],
    );
  }
}

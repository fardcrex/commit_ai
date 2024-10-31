import 'package:commit_ai/presentation/projects/project_alerts/project_create_alert.dart';
import 'package:flutter/material.dart';

class EmptyProjectsDataView extends StatelessWidget {
  const EmptyProjectsDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('No hay proyectos'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ProjectCreateAlert.show(context),
            child: const Text('Crear Proyecto'),
          ),
        ],
      ),
    );
  }
}

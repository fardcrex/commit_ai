// Página de detalle del proyecto
import 'package:flutter/material.dart';

class ProjectDetailPage extends StatelessWidget {
  const ProjectDetailPage({
    required this.projectId,
    super.key,
  });
  final String projectId;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          title: Text('Proyecto: $projectId'),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Panel del Proyecto',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(Icons.dashboard),
                      title: const Text('Analytics'),
                      subtitle: const Text('Estadísticas del proyecto'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.storage),
                      title: const Text('Base de datos'),
                      subtitle: const Text('Gestionar datos'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.security),
                      title: const Text('Autenticación'),
                      subtitle: const Text('Gestionar usuarios'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.cloud),
                      title: const Text('Hosting'),
                      subtitle: const Text('Gestionar hosting'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

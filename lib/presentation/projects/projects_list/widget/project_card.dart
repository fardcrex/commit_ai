import 'package:commit_ai/presentation/projects/projects_list/project_model.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    required this.project,
    required this.onTapped,
    required this.onTappedEdit,
    required this.onTappedDelete,
    super.key,
  });
  final ProjectModel project;
  final VoidCallback onTapped;
  final VoidCallback onTappedEdit;
  final VoidCallback onTappedDelete;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTapped, //
        child: Ink(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.web, size: 24, color: Color(0xFF4F46E5)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          project.decription,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuButton<String>(
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'settings',
                        onTap: onTappedEdit,
                        child: const Text('Editar del proyecto'),
                      ),
                      PopupMenuItem(
                        value: 'delete',
                        onTap: onTappedDelete,
                        child: const Text('Eliminar proyecto'),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const Divider(),
              _ProjectStat(
                icon: Icons.history,
                value: '${project.commits}',
                label: 'Commits generados',
              ),
              const SizedBox(height: 8),
              Text(
                project.timeDescription,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectStat extends StatelessWidget {
  const _ProjectStat({
    required this.icon,
    required this.value,
    required this.label,
  });
  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

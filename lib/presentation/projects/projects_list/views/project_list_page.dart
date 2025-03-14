// Página principal de proyectos
import 'dart:math';

import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_alerts/project_create_alert.dart';
import 'package:commit_ai/presentation/projects/project_alerts/project_delete_alert.dart';
import 'package:commit_ai/presentation/projects/project_alerts/project_edit_alert.dart';
import 'package:commit_ai/presentation/projects/projects_list/project_model.dart';
import 'package:commit_ai/presentation/projects/projects_list/widget/project_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectsDataView extends StatelessWidget {
  final List<ProjectEntityDto> projects;
  const ProjectsDataView({required this.projects, super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final crossAxisCount = isMobile ? 1 : max(1, width ~/ 320);
        return CustomScrollView(
          slivers: [
            // if (!isMobile)
            SliverAppBar(
              floating: true,
              title: const Text('Mis Proyectos'),
              actions: [
                TextButton.icon(
                  onPressed: () => ProjectCreateAlert.show(context),
                  icon: const Icon(Icons.add),
                  label: const Text('Crear Proyecto'),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF4F46E5),
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isMobile ? 1 : crossAxisCount,
                  childAspectRatio: isMobile ? 1.2 : 1.5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final project = projects[index].toModel(context);
                    return ProjectCard(
                      project: project,
                      onTappedEdit: () {
                        ProjectEditAlert.show(context, projects[index]);
                      },
                      onTappedDelete: () {
                        ProjectDeleteAlert.show(context, projects[index]);
                      },
                      onTapped: () =>
                          context.go('/project/${projects[index].id}'),
                    );
                  },
                  childCount: projects.length,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

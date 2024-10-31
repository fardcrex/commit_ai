import 'package:commit_ai/presentation/projects/projects_list/bloc/projects_list_bloc.dart';
import 'package:commit_ai/presentation/projects/projects_list/views/empty_projects_view.dart';
import 'package:commit_ai/presentation/projects/projects_list/views/project_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectListPage extends StatelessWidget {
  const ProjectListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsListBloc, ProjectsListState>(
      builder: (context, state) {
        return switch (state) {
          final Initial _ => const Center(child: CircularProgressIndicator()),
          final Loaded loaded when loaded.projects.isEmpty =>
            const EmptyProjectsDataView(),
          final Loaded loaded => ProjectsDataView(projects: loaded.projects),
          Failure(:final failure) => Center(child: Text(failure.message)),
        };
      },
    );
  }
}

// Página de detalle del proyecto
import 'package:commit_ai/feature/commit_generator/application/delete_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/get_history_commit_use_case.dart';
import 'package:commit_ai/feature/projects/application/get_project_detail_use_case.dart';
import 'package:commit_ai/presentation/projects/project_detail/bloc/project_detail_bloc_bloc.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/form_generator_bloc_section.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/widget/tab_form.dart';
import 'package:commit_ai/presentation/projects/project_detail/history_commit/views/history_commit_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDetailProviderPage extends StatelessWidget {
  final String projectId;
  const ProjectDetailProviderPage({required this.projectId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectDetailBloc(
        context.read<GetProjectDetailtUseCase>(),
        projectId,
        context.read<GetHistoryCommitUseCase>(),
        context.read<DeleteMessageCommitUseCase>(),
      )..add(const ProjectDetailEvent.started()),
      child: ProjectDetailBlocPage(projectId: projectId),
    );
  }
}

class ProjectDetailBlocPage extends StatelessWidget {
  const ProjectDetailBlocPage({
    required this.projectId,
    super.key,
  });
  final String projectId;

  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return BlocBuilder<ProjectDetailBloc, ProjectDetailState>(
      builder: (context, state) {
        return ColoredBox(
          color: Colors.white,
          child: switch (state) {
            final ProjectDetailInitial _ =>
              const Center(child: CircularProgressIndicator()),
            final ProjectDetailError error =>
              Center(child: Text(error.failure.message)),
            final ProjectDetailHistoryError error =>
              Center(child: Text(error.failure.message)),
            final ProjectDetailLoaded projectDetail => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    alignment: Alignment.centerLeft,
                    child: Text('Proyecto: ${projectDetail.project.name}',
                        style: TextStyle(
                            fontSize: 24,
                            color: mainColor,
                            fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                    child: _LandScapeQuery(
                      buildChildren: (isLandScape) => [
                        HistoryCommitSection(
                            showTitle: isLandScape,
                            commits: projectDetail.historyCommit),
                        FormGeneratorProvidersSection(
                            project: projectDetail.project),
                      ],
                    ),
                  ),
                ],
              ),
          },
        );
      },
    );
  }
}

class _LandScapeQuery extends StatefulWidget {
  // ignore: avoid_positional_boolean_parameters
  final List<Widget> Function(bool isLandScape) buildChildren;

  const _LandScapeQuery({required this.buildChildren});

  @override
  State<_LandScapeQuery> createState() => _LandScapeQueryState();
}

class _LandScapeQueryState extends State<_LandScapeQuery> {
  TabView _tabView = TabView.history;

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final children = widget.buildChildren(isLandScape);
    return isLandScape
        ? Row(children: [
            Expanded(flex: 2, child: children.first),
            Expanded(flex: 3, child: children.last),
          ])
        : Column(children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TabForm(
                      isActivated: _tabView == TabView.history,
                      text: 'Historial',
                      onTap: () => setState(() => _tabView = TabView.history),
                    ),
                    TabForm(
                      isActivated: _tabView == TabView.generator,
                      text: 'Generador',
                      onTap: () => setState(() => _tabView = TabView.generator),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: _tabView.index,
                children: children,
              ),
            )
          ]);
  }
}

enum TabView {
  history,
  generator,
}

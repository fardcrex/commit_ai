import 'package:commit_ai/core/injection/envs/repositories_injection.dart';
import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/delete_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/get_projects_use_case.dart';
import 'package:commit_ai/presentation/app/app.dart';
import 'package:commit_ai/presentation/projects/projects_list/bloc/projects_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppProvider extends StatefulWidget {
  final RepositoriesInjection repositoriesInjection;

  const AppProvider({required this.repositoriesInjection, super.key});

  @override
  State<AppProvider> createState() => _AppProviderState();
}

class _AppProviderState extends State<AppProvider> {
  final _repositoryProviders = <RepositoryProvider<Object>>[];

  final _blocProviders = <BlocProvider>[
    BlocProvider<ProjectsListBloc>(
      create: (context) => ProjectsListBloc(
        context.read<GetProjectstUseCase>(),
      )..add(const ProjectsListEvent.started()),
    ),
  ];

  @override
  void initState() {
    final projectRepository = widget.repositoriesInjection.projectRepository;
    _repositoryProviders.addAll([
      RepositoryProvider<CreateProjectUseCase>(
        create: (context) => CreateProjectUseCase(projectRepository),
      ),
      RepositoryProvider<GetProjectstUseCase>(
        create: (context) => GetProjectstUseCase(projectRepository),
      ),
      RepositoryProvider<EditProjectUseCase>(
        create: (context) => EditProjectUseCase(
            projectRepository, widget.repositoriesInjection.respondGetDateTime),
      ),
      RepositoryProvider<DeleteProjectUseCase>(
        create: (context) => DeleteProjectUseCase(projectRepository),
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: _repositoryProviders,
      child: MultiBlocProvider(
        providers: _blocProviders,
        child: const App(),
      ),
    );
  }
}

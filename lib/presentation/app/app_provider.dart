import 'package:commit_ai/core/injection/envs/repositories_injection.dart';
import 'package:commit_ai/feature/commit_generator/application/delete_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/generate_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/get_history_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/load_git_diff_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/delete_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/get_project_detail_use_case.dart';
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
    final messageCommitRepository =
        widget.repositoriesInjection.messageCommitRepository;
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
      RepositoryProvider<GetProjectDetailtUseCase>(
        create: (context) => GetProjectDetailtUseCase(projectRepository),
      ),
      RepositoryProvider<GetHistoryCommitUseCase>(
        create: (context) => GetHistoryCommitUseCase(messageCommitRepository),
      ),
      RepositoryProvider<SaveMessageCommitUseCase>(
        create: (context) => SaveMessageCommitUseCase(messageCommitRepository,
            widget.repositoriesInjection.respondGetDateTime),
      ),
      RepositoryProvider<DeleteMessageCommitUseCase>(
        create: (context) =>
            DeleteMessageCommitUseCase(messageCommitRepository),
      ),
      RepositoryProvider<GenerateMessageCommitUseCase>(
        create: (context) => GenerateMessageCommitUseCase(
            widget.repositoriesInjection.generateMessageCommitRepository),
      ),
      RepositoryProvider<LoadGitDiffUseCase>(
        create: (context) =>
            LoadGitDiffUseCase(widget.repositoriesInjection.gitDiffRepository),
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

import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/delete_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/presentation/projects/project_alerts/bloc/project_alert_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectProviderAlert extends StatelessWidget {
  final Widget child;
  const ProjectProviderAlert({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectAlertBloc(
        context.read<CreateProjectUseCase>(),
        context.read<EditProjectUseCase>(),
        context.read<DeleteProjectUseCase>(),
        context.read<SaveMessageCommitUseCase>(),
      ),
      child: child,
    );
  }
}

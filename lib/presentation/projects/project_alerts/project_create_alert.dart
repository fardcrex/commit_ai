import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/presentation/projects/project_alerts/bloc/project_alert_bloc.dart';
import 'package:commit_ai/presentation/projects/project_alerts/widget/project_form_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectCreateAlert extends StatelessWidget {
  static void show(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return BlocProvider(
          create: (context) => ProjectAlertBloc(
            context.read<CreateProjectUseCase>(),
            context.read<EditProjectUseCase>(),
          ),
          child: const ProjectCreateAlert(),
        );
      },
    );
  }

  const ProjectCreateAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectAlertBloc, ProjectAlertState>(
      builder: (context, state) {
        return ProjectFormAlert(
          formTitle: 'Crear Proyecto',
          formDescription: 'Formulario de creación de proyecto',
          onSendData: (name, description) {
            context.read<ProjectAlertBloc>().add(
                  ProjectAlertEvent.createProject(
                    name: name,
                    description: description,
                  ),
                );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}

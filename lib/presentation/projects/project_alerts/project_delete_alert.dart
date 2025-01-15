import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_alerts/bloc/project_alert_bloc.dart';
import 'package:commit_ai/presentation/projects/project_alerts/project_provider_alert.dart';
import 'package:commit_ai/presentation/projects/project_alerts/widget/project_form_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectDeleteAlert extends StatelessWidget {
  static void show(BuildContext context, ProjectEntityDto project) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return ProjectProviderAlert(
            child: ProjectDeleteAlert(project: project));
      },
    );
  }

  final ProjectEntityDto project;

  const ProjectDeleteAlert({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectAlertBloc, ProjectAlertState>(
      builder: (context, state) {
        return ProjectFormAlert(
          mainButtonLabel: 'Eliminar',
          formTitle: 'Eliminar Proyecto',
          formDescription: 'Formulario de configuración de proyecto',
          hasContent: false,
          onSendData: (_, __, ___) {
            context
                .read<ProjectAlertBloc>()
                .add(ProjectAlertEvent.deleteProject(project: project));

            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}

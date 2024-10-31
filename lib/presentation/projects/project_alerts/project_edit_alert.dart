import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_alerts/bloc/project_alert_bloc.dart';
import 'package:commit_ai/presentation/projects/project_alerts/project_provider_alert.dart';
import 'package:commit_ai/presentation/projects/project_alerts/widget/project_form_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProjectEditAlert extends StatelessWidget {
  static void show(BuildContext context, ProjectEntityDto project) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return ProjectProviderAlert(child: ProjectEditAlert(project: project));
      },
    );
  }

  final ProjectEntityDto project;

  const ProjectEditAlert({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectAlertBloc, ProjectAlertState>(
      builder: (context, state) {
        return ProjectFormAlert(
          mainButtonLabel: 'Editar',
          formTitle: 'Editar Proyecto',
          formDescription: 'Formulario de configuración de proyecto',
          initialDescription: project.description,
          initialName: project.name,
          onSendData: (name, description) {
            final projectUpdated =
                project.copyWith(name: name, description: description);

            context
                .read<ProjectAlertBloc>()
                .add(ProjectAlertEvent.updateProject(project: projectUpdated));

            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}

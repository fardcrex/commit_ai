import 'package:commit_ai/feature/commit_generator/application/generate_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/load_git_diff_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/bloc/form_message_commit_bloc.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/views/form_generator.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/views/save_form_alert.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/widget/snack_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormGeneratorProvidersSection extends StatelessWidget {
  final ProjectEntityDto project;
  const FormGeneratorProvidersSection({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormMessageCommitBloc(
        context.read<GenerateMessageCommitUseCase>(),
        context.read<EditProjectUseCase>(),
        context.read<SaveMessageCommitUseCase>(),
        context.read<LoadGitDiffUseCase>(),
      ),
      child: FormGeneratorBlocSection(
        project: project,
      ),
    );
  }
}

class FormGeneratorBlocSection extends StatelessWidget {
  final ProjectEntityDto project;
  const FormGeneratorBlocSection({required this.project, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FormMessageCommitBloc, FormMessageCommitState>(
      listener: (context, state) {
        if (state case final FormError formError) {
          SnackBarCustom.showError(
            context,
            'Error al generar el mensaje de commit: ${formError.failure.message}',
          );
        }
        if (state case final FormErrorLoadGitDiff formErrorLoadGitDiff) {
          SnackBarCustom.showError(
            context,
            switch (formErrorLoadGitDiff.failure) {
              PermissionDeniedFailure() =>
                'Permiso denegado para cargar el repositorio',
              NotGitRepositoryFailure() =>
                'No se encontró el repositorio git, verifique la ruta',
              EmptyGitDiffFailure() => 'No hay cambios en el repositorio',
              final UnexpectedFailure failure =>
                'Error inesperado al ejecutar comando: ${failure.message}',
            },
          );
        }
        if (state case final FormSuccessGenerate formSuccessGenerate) {
          showDialog<void>(
            context: context,
            builder: (contextDialog) => SaveFormAlert(
              resultIA: formSuccessGenerate.result,
              onRetry: () {
                Navigator.of(contextDialog).pop();
                context.read<FormMessageCommitBloc>().add(
                    GenerateMessageCommit(formSuccessGenerate.formGenerator));
              },
              onSave: () {
                Navigator.of(contextDialog).pop();
                context.read<FormMessageCommitBloc>().add(
                    SaveMessageCommit(formSuccessGenerate.result, project.id));
              },
            ),
          );
        }
      },
      child: FormGenerator(
        projectDescription: project.description,
        projectPath: project.path,
        includeBody: project.includeBody,
        includeFooter: project.includeFooter,
        onIncludeBodynChanged: () {
          _updateProject(
              context, project.copyWith(includeBody: !project.includeBody));
        },
        onIncludeFooterChanged: () {
          _updateProject(
              context, project.copyWith(includeFooter: !project.includeFooter));
        },
        onDescriptionChanged: (newDescription) {
          _updateProject(
              context, project.copyWith(description: newDescription));
        },
      ),
    );
  }

  void _updateProject(BuildContext context, ProjectEntityDto project) {
    context
        .read<FormMessageCommitBloc>()
        .add(FormMessageCommitEvent.editProject(project));
  }
}

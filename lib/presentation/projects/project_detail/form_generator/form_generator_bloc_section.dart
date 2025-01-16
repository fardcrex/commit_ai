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
        state.maybeWhen(
          error: (failure) {
            SnackBarCustom.showError(
              context,
              'Error al generar el mensaje de commit: ${failure.message}',
            );
          },
          initial: () {},
          loading: () {},
          errorLoadGitDiff: (failure) {
            SnackBarCustom.showError(
                context,
                switch (failure) {
                  PermissionDeniedFailure() =>
                    'Permiso denegado para cargar el repositorio',
                  NotGitRepositoryFailure() =>
                    'No se encontró el repositorio git, verifique la ruta',
                  final UnexpectedFailure failure =>
                    'Error inesperado al ejecutar comando: ${failure.message}',
                });
          },
          orElse: () => SnackBarCustom.showSuccess(context),
          successGenerate: (resultIA) {
            showDialog<void>(
              context: context,
              builder: (contextDialog) => SaveFormAlert(
                resultIA: resultIA,
                onSave: () {
                  Navigator.of(contextDialog).pop();
                  context
                      .read<FormMessageCommitBloc>()
                      .add(SaveMessageCommit(resultIA, project.id));
                },
              ),
            );
          },
        );
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

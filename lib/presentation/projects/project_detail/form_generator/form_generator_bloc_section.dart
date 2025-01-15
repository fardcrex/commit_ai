import 'dart:math';

import 'package:commit_ai/feature/commit_generator/application/generate_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/bloc/form_message_commit_bloc.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/views/form_generator.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/views/save_form_alert.dart';
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
          error: (_) {},
          initial: () {},
          loading: () {},
          orElse: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                width: max(MediaQuery.of(context).size.width * 0.5, 200),
                behavior: SnackBarBehavior.floating,
                elevation: 2,
                clipBehavior: Clip.antiAlias,
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.green,
                content:
                    const Center(child: Text('Acción realizada correctamente')),
              ),
            );
          },
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
        onDescriptionChanged: (newDescription) {
          context.read<FormMessageCommitBloc>().add(
                EditProject(project.copyWith(description: newDescription)),
              );
        },
      ),
    );
  }
}

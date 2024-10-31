import 'package:bloc/bloc.dart';
import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/delete_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_alert_bloc.freezed.dart';
part 'project_alert_event.dart';
part 'project_alert_state.dart';

class ProjectAlertBloc extends Bloc<ProjectAlertEvent, ProjectAlertState> {
  final CreateProjectUseCase _createProjectUseCase;
  final EditProjectUseCase _editProjectUseCase;
  final DeleteProjectUseCase _deleteProjectUseCase;
  final SaveMessageCommitUseCase _saveMessageCommitUseCase;

  ProjectAlertBloc(
    this._createProjectUseCase,
    this._editProjectUseCase,
    this._deleteProjectUseCase,
    this._saveMessageCommitUseCase,
  ) : super(const FormInitial()) {
    on<_CreateProject>(_onCreateProject);
    on<_UpdateProject>(_onEditProject);
    on<_DeleteProject>(_onDeleteProject);
  }

  Future<void> _onCreateProject(
    _CreateProject event,
    Emitter<ProjectAlertState> emit,
  ) async {
    emit(const ProjectAlertState.loading());

    final result = await _createProjectUseCase.execute(
      title: event.name,
      description: event.description,
    );

    result.fold(
      (failure) => emit(ProjectAlertState.error(failure.toString())),
      (projectId) async {
        await _saveMessageCommitUseCase.execute(
            ResultIaMessageCommit.example(), projectId);

        emit(const ProjectAlertState.success());
      },
    );
  }

  Future<void> _onEditProject(
    _UpdateProject event,
    Emitter<ProjectAlertState> emit,
  ) async {
    emit(const ProjectAlertState.loading());

    await _editProjectUseCase.execute(event.project);

    emit(const ProjectAlertState.success());
  }

  Future<void> _onDeleteProject(
    _DeleteProject event,
    Emitter<ProjectAlertState> emit,
  ) async {
    emit(const ProjectAlertState.loading());

    await _deleteProjectUseCase.execute(event.project.id);

    emit(const ProjectAlertState.success());
  }
}

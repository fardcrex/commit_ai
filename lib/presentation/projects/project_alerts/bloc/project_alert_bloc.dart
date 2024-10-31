import 'package:bloc/bloc.dart';
import 'package:commit_ai/feature/projects/application/create_project_use_case.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_alert_bloc.freezed.dart';
part 'project_alert_event.dart';
part 'project_alert_state.dart';

class ProjectAlertBloc extends Bloc<ProjectAlertEvent, ProjectAlertState> {
  final CreateProjectUseCase _createProjectUseCase;
  final EditProjectUseCase _editProjectUseCase;

  ProjectAlertBloc(this._createProjectUseCase, this._editProjectUseCase)
      : super(const _Initial()) {
    on<_CreateProject>(_onCreateProject);
    on<_UpdateProject>(_onEditProject);
  }

  Future<void> _onCreateProject(
    _CreateProject event,
    Emitter<ProjectAlertState> emit,
  ) async {
    await _createProjectUseCase.execute(
      title: event.name,
      description: event.description,
    );
  }

  Future<void> _onEditProject(
    _UpdateProject event,
    Emitter<ProjectAlertState> emit,
  ) async {
    await _editProjectUseCase.execute(event.project);
  }
}

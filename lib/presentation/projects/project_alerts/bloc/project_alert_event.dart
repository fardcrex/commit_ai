part of 'project_alert_bloc.dart';

@freezed
class ProjectAlertEvent with _$ProjectAlertEvent {
  const factory ProjectAlertEvent.createProject({
    required String name,
    required String description,
    required String? path,
  }) = _CreateProject;

  const factory ProjectAlertEvent.updateProject({
    required ProjectEntityDto project,
  }) = _UpdateProject;

  const factory ProjectAlertEvent.deleteProject({
    required ProjectEntityDto project,
  }) = _DeleteProject;
}

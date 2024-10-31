part of 'project_detail_bloc_bloc.dart';

@freezed
class ProjectDetailEvent with _$ProjectDetailEvent {
  const factory ProjectDetailEvent.started() = _Started;
  const factory ProjectDetailEvent.deleteMessage(String id) = _DeleteMessage;
}

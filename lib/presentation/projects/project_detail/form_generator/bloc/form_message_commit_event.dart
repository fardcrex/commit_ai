part of 'form_message_commit_bloc.dart';

@freezed
class FormMessageCommitEvent with _$FormMessageCommitEvent {
  const factory FormMessageCommitEvent.generateMessageCommit(
      FormGeneratorCommit formGeneratorCommit) = GenerateMessageCommit;

  const factory FormMessageCommitEvent.editProject(
      ProjectEntityDto projectEntityDto) = EditProject;

  const factory FormMessageCommitEvent.saveMessageCommit(
          ResultIaMessageCommit resultIaMessageCommit, String projectId) =
      SaveMessageCommit;
}

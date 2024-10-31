part of 'project_detail_bloc_bloc.dart';

@freezed
sealed class ProjectDetailState with _$ProjectDetailState {
  const factory ProjectDetailState.initial() = ProjectDetailInitial;
  const factory ProjectDetailState.loaded(ProjectEntityDto project,
      List<MessageCommitEntityDto> historyCommit) = ProjectDetailLoaded;
  const factory ProjectDetailState.errorProject(ProjectFailure failure) =
      ProjectDetailError;

  const factory ProjectDetailState.errorHistory(
      CommitGeneratorFailure failure) = ProjectDetailHistoryError;
}

part of 'form_message_commit_bloc.dart';

@freezed
sealed class FormMessageCommitState with _$FormMessageCommitState {
  const factory FormMessageCommitState.initial() = FormInitial;
  const factory FormMessageCommitState.loading() = FormLoading;
  const factory FormMessageCommitState.successGenerate(
      ResultIaMessageCommit result) = FormSuccessGenerate;

  const factory FormMessageCommitState.successEdit() = FormSuccessEdit;
  const factory FormMessageCommitState.successLoadGitDiff(GitDiffEntity diff) =
      FormSuccessLoadGitDiff;

  const factory FormMessageCommitState.successSave() = FormSuccessSave;
  const factory FormMessageCommitState.error(CommitGeneratorFailure failure) =
      FormError;
  const factory FormMessageCommitState.errorLoadGitDiff(
      GitDiffFailure failure) = FormErrorLoadGitDiff;

  const FormMessageCommitState._();

  bool get isInitial => this is FormInitial;
  bool get isLoading => this is FormLoading;
}

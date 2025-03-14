part of 'form_message_commit_bloc.dart';

@freezed
sealed class FormMessageCommitState with _$FormMessageCommitState {
  const factory FormMessageCommitState.initial() = FormInitial;
  const factory FormMessageCommitState.loading() = FormLoading;

  const factory FormMessageCommitState.successGenerate(
    ResultIaMessageCommit result,
    FormGeneratorCommit formGenerator,
  ) = FormSuccessGenerate;

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
  bool get isSuccessGenerate => this is FormSuccessGenerate;

  bool get isSuccessEdit => this is FormSuccessEdit;
  bool get isSuccessLoadGitDiff => this is FormSuccessLoadGitDiff;
  bool get isSuccessSave => this is FormSuccessSave;
  bool get isError => this is FormError;
  bool get isErrorLoadGitDiff => this is FormErrorLoadGitDiff;
}

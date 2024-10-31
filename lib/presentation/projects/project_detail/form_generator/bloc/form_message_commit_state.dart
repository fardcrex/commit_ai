part of 'form_message_commit_bloc.dart';

@freezed
sealed class FormMessageCommitState with _$FormMessageCommitState {
  const factory FormMessageCommitState.initial() = FormInitial;
  const factory FormMessageCommitState.loading() = FormLoading;
  const factory FormMessageCommitState.successGenerate(
      ResultIaMessageCommit result) = FormSuccessGenerate;

  const factory FormMessageCommitState.successEdit() = FormSuccessEdit;

  const factory FormMessageCommitState.successSave() = FormSuccessSave;
  const factory FormMessageCommitState.error(CommitGeneratorFailure failure) =
      FormError;
}

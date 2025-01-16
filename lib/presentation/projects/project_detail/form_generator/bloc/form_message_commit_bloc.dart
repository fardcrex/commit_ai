import 'package:bloc/bloc.dart';
import 'package:commit_ai/feature/commit_generator/application/generate_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/load_git_diff_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/git_diff_entity.dart';
import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/projects/application/edit_project_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_message_commit_bloc.freezed.dart';
part 'form_message_commit_event.dart';
part 'form_message_commit_state.dart';

class FormMessageCommitBloc
    extends Bloc<FormMessageCommitEvent, FormMessageCommitState> {
  final GenerateMessageCommitUseCase _generateMessageCommitUseCase;
  final SaveMessageCommitUseCase _saveMessageCommitUseCase;
  final EditProjectUseCase _editProjectUseCase;
  final LoadGitDiffUseCase _loadGitDiffUseCase;

  FormMessageCommitBloc(
    this._generateMessageCommitUseCase,
    this._editProjectUseCase,
    this._saveMessageCommitUseCase,
    this._loadGitDiffUseCase,
  ) : super(const FormInitial()) {
    on<GenerateMessageCommit>((event, emit) async {
      emit(const FormLoading());

      final result = await _generateMessageCommitUseCase
          .execute(event.formGeneratorCommit);

      emit(result.fold(FormError.new, FormMessageCommitState.successGenerate));
    });

    on<EditProject>((event, emit) async {
      emit(const FormLoading());

      await _editProjectUseCase.execute(event.projectEntityDto);

      emit(const FormSuccessEdit());
    });

    on<SaveMessageCommit>((event, emit) async {
      emit(const FormLoading());

      await _saveMessageCommitUseCase.execute(
        event.resultIaMessageCommit,
        event.projectId,
      );

      emit(const FormSuccessSave());
    });

    on<LoadGitDiff>((event, emit) async {
      emit(const FormLoading());

      final result = await _loadGitDiffUseCase.execute(event.projectPath);

      emit(result.fold(
        FormErrorLoadGitDiff.new,
        FormMessageCommitState.successLoadGitDiff,
      ));
    });
  }
}

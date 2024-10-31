import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commit_ai/feature/commit_generator/application/delete_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/application/get_history_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/message_commit_entity_dto.dart';
import 'package:commit_ai/feature/projects/application/get_project_detail_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

part 'project_detail_bloc_bloc.freezed.dart';
part 'project_detail_bloc_event.dart';
part 'project_detail_bloc_state.dart';

class ProjectDetailBloc extends Bloc<ProjectDetailEvent, ProjectDetailState> {
  final String projectId;
  final GetProjectDetailtUseCase _getProjectDetailtUseCase;
  final GetHistoryCommitUseCase _getHistoryCommitUseCase;
  final DeleteMessageCommitUseCase _deleteMessageCommitUseCase;

  ProjectDetailBloc(this._getProjectDetailtUseCase, this.projectId,
      this._getHistoryCommitUseCase, this._deleteMessageCommitUseCase)
      : super(const ProjectDetailInitial()) {
    on<_Started>(
      _onStarted,
      transformer: restartable(),
    );

    on<_DeleteMessage>(_onDeleteMessageCommit);
  }

  Future<void> _onDeleteMessageCommit(
      _DeleteMessage event, Emitter<ProjectDetailState> emit) async {
    await _deleteMessageCommitUseCase.execute(event.id);
  }

  Future<void> _onStarted(
      ProjectDetailEvent event, Emitter<ProjectDetailState> emit) async {
    await emit.forEach(
      CombineLatestStream.combine2(
        _getProjectDetailtUseCase.execute(projectId),
        _getHistoryCommitUseCase.execute(500, projectId),
        (value1, value2) => (value1, value2),
      ),
      onData: (data) {
        final (projectResult, commitsResult) = data;

        return projectResult.fold(
          ProjectDetailState.errorProject,
          (project) {
            return commitsResult.fold(
              ProjectDetailState.errorHistory,
              (commits) => ProjectDetailState.loaded(project, commits),
            );
          },
        );
      },
    );
  }
}

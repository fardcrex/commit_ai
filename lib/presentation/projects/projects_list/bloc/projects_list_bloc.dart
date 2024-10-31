import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commit_ai/feature/projects/application/get_projects_use_case.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_list_bloc.freezed.dart';
part 'projects_list_event.dart';
part 'projects_list_state.dart';

class ProjectsListBloc extends Bloc<ProjectsListEvent, ProjectsListState> {
  final GetProjectstUseCase _getProjectstUseCase;
  ProjectsListBloc(this._getProjectstUseCase) : super(const Initial()) {
    on<_Started>(
      _onStarted,
      transformer: restartable(),
    );
  }

  var _limit = 25;

  Future<void> _onStarted(
      _Started event, Emitter<ProjectsListState> emit) async {
    _limit = _limit + 25;

    await emit.forEach(
      _getProjectstUseCase.execute(_limit),
      onData: (data) {
        return data.fold(ProjectsListState.error, ProjectsListState.loaded);
      },
    );
  }
}

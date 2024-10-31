part of 'projects_list_bloc.dart';

@freezed
sealed class ProjectsListState with _$ProjectsListState {
  const factory ProjectsListState.initial() = Initial;
  const factory ProjectsListState.error(ProjectFailure failure) =
      ProjectsListError;
  const factory ProjectsListState.loaded(List<ProjectEntityDto> projects) =
      Loaded;
}

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectsListEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectsListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectsListEvent()';
  }
}

/// @nodoc
class $ProjectsListEventCopyWith<$Res> {
  $ProjectsListEventCopyWith(
      ProjectsListEvent _, $Res Function(ProjectsListEvent) __);
}

/// @nodoc

class _Started implements ProjectsListEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectsListEvent.started()';
  }
}

/// @nodoc
mixin _$ProjectsListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectsListState()';
  }
}

/// @nodoc
class $ProjectsListStateCopyWith<$Res> {
  $ProjectsListStateCopyWith(
      ProjectsListState _, $Res Function(ProjectsListState) __);
}

/// @nodoc

class Initial implements ProjectsListState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectsListState.initial()';
  }
}

/// @nodoc

class ProjectsListError implements ProjectsListState {
  const ProjectsListError(this.failure);

  final ProjectFailure failure;

  /// Create a copy of ProjectsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectsListErrorCopyWith<ProjectsListError> get copyWith =>
      _$ProjectsListErrorCopyWithImpl<ProjectsListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectsListError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'ProjectsListState.error(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ProjectsListErrorCopyWith<$Res>
    implements $ProjectsListStateCopyWith<$Res> {
  factory $ProjectsListErrorCopyWith(
          ProjectsListError value, $Res Function(ProjectsListError) _then) =
      _$ProjectsListErrorCopyWithImpl;
  @useResult
  $Res call({ProjectFailure failure});
}

/// @nodoc
class _$ProjectsListErrorCopyWithImpl<$Res>
    implements $ProjectsListErrorCopyWith<$Res> {
  _$ProjectsListErrorCopyWithImpl(this._self, this._then);

  final ProjectsListError _self;
  final $Res Function(ProjectsListError) _then;

  /// Create a copy of ProjectsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(ProjectsListError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProjectFailure,
    ));
  }
}

/// @nodoc

class Loaded implements ProjectsListState {
  const Loaded(final List<ProjectEntityDto> projects) : _projects = projects;

  final List<ProjectEntityDto> _projects;
  List<ProjectEntityDto> get projects {
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projects);
  }

  /// Create a copy of ProjectsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @override
  String toString() {
    return 'ProjectsListState.loaded(projects: $projects)';
  }
}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res>
    implements $ProjectsListStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) =
      _$LoadedCopyWithImpl;
  @useResult
  $Res call({List<ProjectEntityDto> projects});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

  /// Create a copy of ProjectsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? projects = null,
  }) {
    return _then(Loaded(
      null == projects
          ? _self._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntityDto>,
    ));
  }
}

// dart format on

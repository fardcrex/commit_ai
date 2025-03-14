// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_detail_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectDetailEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectDetailEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectDetailEvent()';
  }
}

/// @nodoc
class $ProjectDetailEventCopyWith<$Res> {
  $ProjectDetailEventCopyWith(
      ProjectDetailEvent _, $Res Function(ProjectDetailEvent) __);
}

/// @nodoc

class _Started implements ProjectDetailEvent {
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
    return 'ProjectDetailEvent.started()';
  }
}

/// @nodoc

class _DeleteMessage implements ProjectDetailEvent {
  const _DeleteMessage(this.id);

  final String id;

  /// Create a copy of ProjectDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteMessageCopyWith<_DeleteMessage> get copyWith =>
      __$DeleteMessageCopyWithImpl<_DeleteMessage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteMessage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'ProjectDetailEvent.deleteMessage(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$DeleteMessageCopyWith<$Res>
    implements $ProjectDetailEventCopyWith<$Res> {
  factory _$DeleteMessageCopyWith(
          _DeleteMessage value, $Res Function(_DeleteMessage) _then) =
      __$DeleteMessageCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$DeleteMessageCopyWithImpl<$Res>
    implements _$DeleteMessageCopyWith<$Res> {
  __$DeleteMessageCopyWithImpl(this._self, this._then);

  final _DeleteMessage _self;
  final $Res Function(_DeleteMessage) _then;

  /// Create a copy of ProjectDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_DeleteMessage(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ProjectDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectDetailState()';
  }
}

/// @nodoc
class $ProjectDetailStateCopyWith<$Res> {
  $ProjectDetailStateCopyWith(
      ProjectDetailState _, $Res Function(ProjectDetailState) __);
}

/// @nodoc

class ProjectDetailInitial implements ProjectDetailState {
  const ProjectDetailInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectDetailState.initial()';
  }
}

/// @nodoc

class ProjectDetailLoaded implements ProjectDetailState {
  const ProjectDetailLoaded(
      this.project, final List<MessageCommitEntityDto> historyCommit)
      : _historyCommit = historyCommit;

  final ProjectEntityDto project;
  final List<MessageCommitEntityDto> _historyCommit;
  List<MessageCommitEntityDto> get historyCommit {
    if (_historyCommit is EqualUnmodifiableListView) return _historyCommit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyCommit);
  }

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectDetailLoadedCopyWith<ProjectDetailLoaded> get copyWith =>
      _$ProjectDetailLoadedCopyWithImpl<ProjectDetailLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectDetailLoaded &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality()
                .equals(other._historyCommit, _historyCommit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project,
      const DeepCollectionEquality().hash(_historyCommit));

  @override
  String toString() {
    return 'ProjectDetailState.loaded(project: $project, historyCommit: $historyCommit)';
  }
}

/// @nodoc
abstract mixin class $ProjectDetailLoadedCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailLoadedCopyWith(
          ProjectDetailLoaded value, $Res Function(ProjectDetailLoaded) _then) =
      _$ProjectDetailLoadedCopyWithImpl;
  @useResult
  $Res call(
      {ProjectEntityDto project, List<MessageCommitEntityDto> historyCommit});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class _$ProjectDetailLoadedCopyWithImpl<$Res>
    implements $ProjectDetailLoadedCopyWith<$Res> {
  _$ProjectDetailLoadedCopyWithImpl(this._self, this._then);

  final ProjectDetailLoaded _self;
  final $Res Function(ProjectDetailLoaded) _then;

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? project = null,
    Object? historyCommit = null,
  }) {
    return _then(ProjectDetailLoaded(
      null == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
      null == historyCommit
          ? _self._historyCommit
          : historyCommit // ignore: cast_nullable_to_non_nullable
              as List<MessageCommitEntityDto>,
    ));
  }

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get project {
    return $ProjectEntityDtoCopyWith<$Res>(_self.project, (value) {
      return _then(_self.copyWith(project: value));
    });
  }
}

/// @nodoc

class ProjectDetailError implements ProjectDetailState {
  const ProjectDetailError(this.failure);

  final ProjectFailure failure;

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectDetailErrorCopyWith<ProjectDetailError> get copyWith =>
      _$ProjectDetailErrorCopyWithImpl<ProjectDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectDetailError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'ProjectDetailState.errorProject(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ProjectDetailErrorCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailErrorCopyWith(
          ProjectDetailError value, $Res Function(ProjectDetailError) _then) =
      _$ProjectDetailErrorCopyWithImpl;
  @useResult
  $Res call({ProjectFailure failure});
}

/// @nodoc
class _$ProjectDetailErrorCopyWithImpl<$Res>
    implements $ProjectDetailErrorCopyWith<$Res> {
  _$ProjectDetailErrorCopyWithImpl(this._self, this._then);

  final ProjectDetailError _self;
  final $Res Function(ProjectDetailError) _then;

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(ProjectDetailError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProjectFailure,
    ));
  }
}

/// @nodoc

class ProjectDetailHistoryError implements ProjectDetailState {
  const ProjectDetailHistoryError(this.failure);

  final CommitGeneratorFailure failure;

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectDetailHistoryErrorCopyWith<ProjectDetailHistoryError> get copyWith =>
      _$ProjectDetailHistoryErrorCopyWithImpl<ProjectDetailHistoryError>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectDetailHistoryError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'ProjectDetailState.errorHistory(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $ProjectDetailHistoryErrorCopyWith<$Res>
    implements $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailHistoryErrorCopyWith(ProjectDetailHistoryError value,
          $Res Function(ProjectDetailHistoryError) _then) =
      _$ProjectDetailHistoryErrorCopyWithImpl;
  @useResult
  $Res call({CommitGeneratorFailure failure});
}

/// @nodoc
class _$ProjectDetailHistoryErrorCopyWithImpl<$Res>
    implements $ProjectDetailHistoryErrorCopyWith<$Res> {
  _$ProjectDetailHistoryErrorCopyWithImpl(this._self, this._then);

  final ProjectDetailHistoryError _self;
  final $Res Function(ProjectDetailHistoryError) _then;

  /// Create a copy of ProjectDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(ProjectDetailHistoryError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommitGeneratorFailure,
    ));
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_detail_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailEventCopyWith<$Res> {
  factory $ProjectDetailEventCopyWith(
          ProjectDetailEvent value, $Res Function(ProjectDetailEvent) then) =
      _$ProjectDetailEventCopyWithImpl<$Res, ProjectDetailEvent>;
}

/// @nodoc
class _$ProjectDetailEventCopyWithImpl<$Res, $Val extends ProjectDetailEvent>
    implements $ProjectDetailEventCopyWith<$Res> {
  _$ProjectDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProjectDetailEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProjectDetailEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) deleteMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? deleteMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? deleteMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProjectDetailEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$ProjectDetailEventCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteMessageImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectDetailEvent.deleteMessage(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id) deleteMessage,
  }) {
    return deleteMessage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id)? deleteMessage,
  }) {
    return deleteMessage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteMessage value) deleteMessage,
  }) {
    return deleteMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteMessage value)? deleteMessage,
  }) {
    return deleteMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteMessage value)? deleteMessage,
    required TResult orElse(),
  }) {
    if (deleteMessage != null) {
      return deleteMessage(this);
    }
    return orElse();
  }
}

abstract class _DeleteMessage implements ProjectDetailEvent {
  const factory _DeleteMessage(final String id) = _$DeleteMessageImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)
        loaded,
    required TResult Function(ProjectFailure failure) errorProject,
    required TResult Function(CommitGeneratorFailure failure) errorHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult? Function(ProjectFailure failure)? errorProject,
    TResult? Function(CommitGeneratorFailure failure)? errorHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult Function(ProjectFailure failure)? errorProject,
    TResult Function(CommitGeneratorFailure failure)? errorHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectDetailInitial value) initial,
    required TResult Function(ProjectDetailLoaded value) loaded,
    required TResult Function(ProjectDetailError value) errorProject,
    required TResult Function(ProjectDetailHistoryError value) errorHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectDetailInitial value)? initial,
    TResult? Function(ProjectDetailLoaded value)? loaded,
    TResult? Function(ProjectDetailError value)? errorProject,
    TResult? Function(ProjectDetailHistoryError value)? errorHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectDetailInitial value)? initial,
    TResult Function(ProjectDetailLoaded value)? loaded,
    TResult Function(ProjectDetailError value)? errorProject,
    TResult Function(ProjectDetailHistoryError value)? errorHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailStateCopyWith<$Res> {
  factory $ProjectDetailStateCopyWith(
          ProjectDetailState value, $Res Function(ProjectDetailState) then) =
      _$ProjectDetailStateCopyWithImpl<$Res, ProjectDetailState>;
}

/// @nodoc
class _$ProjectDetailStateCopyWithImpl<$Res, $Val extends ProjectDetailState>
    implements $ProjectDetailStateCopyWith<$Res> {
  _$ProjectDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProjectDetailInitialImplCopyWith<$Res> {
  factory _$$ProjectDetailInitialImplCopyWith(_$ProjectDetailInitialImpl value,
          $Res Function(_$ProjectDetailInitialImpl) then) =
      __$$ProjectDetailInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProjectDetailInitialImplCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res, _$ProjectDetailInitialImpl>
    implements _$$ProjectDetailInitialImplCopyWith<$Res> {
  __$$ProjectDetailInitialImplCopyWithImpl(_$ProjectDetailInitialImpl _value,
      $Res Function(_$ProjectDetailInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProjectDetailInitialImpl implements ProjectDetailInitial {
  const _$ProjectDetailInitialImpl();

  @override
  String toString() {
    return 'ProjectDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)
        loaded,
    required TResult Function(ProjectFailure failure) errorProject,
    required TResult Function(CommitGeneratorFailure failure) errorHistory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult? Function(ProjectFailure failure)? errorProject,
    TResult? Function(CommitGeneratorFailure failure)? errorHistory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult Function(ProjectFailure failure)? errorProject,
    TResult Function(CommitGeneratorFailure failure)? errorHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectDetailInitial value) initial,
    required TResult Function(ProjectDetailLoaded value) loaded,
    required TResult Function(ProjectDetailError value) errorProject,
    required TResult Function(ProjectDetailHistoryError value) errorHistory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectDetailInitial value)? initial,
    TResult? Function(ProjectDetailLoaded value)? loaded,
    TResult? Function(ProjectDetailError value)? errorProject,
    TResult? Function(ProjectDetailHistoryError value)? errorHistory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectDetailInitial value)? initial,
    TResult Function(ProjectDetailLoaded value)? loaded,
    TResult Function(ProjectDetailError value)? errorProject,
    TResult Function(ProjectDetailHistoryError value)? errorHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProjectDetailInitial implements ProjectDetailState {
  const factory ProjectDetailInitial() = _$ProjectDetailInitialImpl;
}

/// @nodoc
abstract class _$$ProjectDetailLoadedImplCopyWith<$Res> {
  factory _$$ProjectDetailLoadedImplCopyWith(_$ProjectDetailLoadedImpl value,
          $Res Function(_$ProjectDetailLoadedImpl) then) =
      __$$ProjectDetailLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProjectEntityDto project, List<MessageCommitEntityDto> historyCommit});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class __$$ProjectDetailLoadedImplCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res, _$ProjectDetailLoadedImpl>
    implements _$$ProjectDetailLoadedImplCopyWith<$Res> {
  __$$ProjectDetailLoadedImplCopyWithImpl(_$ProjectDetailLoadedImpl _value,
      $Res Function(_$ProjectDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
    Object? historyCommit = null,
  }) {
    return _then(_$ProjectDetailLoadedImpl(
      null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
      null == historyCommit
          ? _value._historyCommit
          : historyCommit // ignore: cast_nullable_to_non_nullable
              as List<MessageCommitEntityDto>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get project {
    return $ProjectEntityDtoCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$ProjectDetailLoadedImpl implements ProjectDetailLoaded {
  const _$ProjectDetailLoadedImpl(
      this.project, final List<MessageCommitEntityDto> historyCommit)
      : _historyCommit = historyCommit;

  @override
  final ProjectEntityDto project;
  final List<MessageCommitEntityDto> _historyCommit;
  @override
  List<MessageCommitEntityDto> get historyCommit {
    if (_historyCommit is EqualUnmodifiableListView) return _historyCommit;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyCommit);
  }

  @override
  String toString() {
    return 'ProjectDetailState.loaded(project: $project, historyCommit: $historyCommit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailLoadedImpl &&
            (identical(other.project, project) || other.project == project) &&
            const DeepCollectionEquality()
                .equals(other._historyCommit, _historyCommit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project,
      const DeepCollectionEquality().hash(_historyCommit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailLoadedImplCopyWith<_$ProjectDetailLoadedImpl> get copyWith =>
      __$$ProjectDetailLoadedImplCopyWithImpl<_$ProjectDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)
        loaded,
    required TResult Function(ProjectFailure failure) errorProject,
    required TResult Function(CommitGeneratorFailure failure) errorHistory,
  }) {
    return loaded(project, historyCommit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult? Function(ProjectFailure failure)? errorProject,
    TResult? Function(CommitGeneratorFailure failure)? errorHistory,
  }) {
    return loaded?.call(project, historyCommit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult Function(ProjectFailure failure)? errorProject,
    TResult Function(CommitGeneratorFailure failure)? errorHistory,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(project, historyCommit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectDetailInitial value) initial,
    required TResult Function(ProjectDetailLoaded value) loaded,
    required TResult Function(ProjectDetailError value) errorProject,
    required TResult Function(ProjectDetailHistoryError value) errorHistory,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectDetailInitial value)? initial,
    TResult? Function(ProjectDetailLoaded value)? loaded,
    TResult? Function(ProjectDetailError value)? errorProject,
    TResult? Function(ProjectDetailHistoryError value)? errorHistory,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectDetailInitial value)? initial,
    TResult Function(ProjectDetailLoaded value)? loaded,
    TResult Function(ProjectDetailError value)? errorProject,
    TResult Function(ProjectDetailHistoryError value)? errorHistory,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProjectDetailLoaded implements ProjectDetailState {
  const factory ProjectDetailLoaded(final ProjectEntityDto project,
          final List<MessageCommitEntityDto> historyCommit) =
      _$ProjectDetailLoadedImpl;

  ProjectEntityDto get project;
  List<MessageCommitEntityDto> get historyCommit;
  @JsonKey(ignore: true)
  _$$ProjectDetailLoadedImplCopyWith<_$ProjectDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectDetailErrorImplCopyWith<$Res> {
  factory _$$ProjectDetailErrorImplCopyWith(_$ProjectDetailErrorImpl value,
          $Res Function(_$ProjectDetailErrorImpl) then) =
      __$$ProjectDetailErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectFailure failure});
}

/// @nodoc
class __$$ProjectDetailErrorImplCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res, _$ProjectDetailErrorImpl>
    implements _$$ProjectDetailErrorImplCopyWith<$Res> {
  __$$ProjectDetailErrorImplCopyWithImpl(_$ProjectDetailErrorImpl _value,
      $Res Function(_$ProjectDetailErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ProjectDetailErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ProjectFailure,
    ));
  }
}

/// @nodoc

class _$ProjectDetailErrorImpl implements ProjectDetailError {
  const _$ProjectDetailErrorImpl(this.failure);

  @override
  final ProjectFailure failure;

  @override
  String toString() {
    return 'ProjectDetailState.errorProject(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailErrorImplCopyWith<_$ProjectDetailErrorImpl> get copyWith =>
      __$$ProjectDetailErrorImplCopyWithImpl<_$ProjectDetailErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)
        loaded,
    required TResult Function(ProjectFailure failure) errorProject,
    required TResult Function(CommitGeneratorFailure failure) errorHistory,
  }) {
    return errorProject(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult? Function(ProjectFailure failure)? errorProject,
    TResult? Function(CommitGeneratorFailure failure)? errorHistory,
  }) {
    return errorProject?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult Function(ProjectFailure failure)? errorProject,
    TResult Function(CommitGeneratorFailure failure)? errorHistory,
    required TResult orElse(),
  }) {
    if (errorProject != null) {
      return errorProject(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectDetailInitial value) initial,
    required TResult Function(ProjectDetailLoaded value) loaded,
    required TResult Function(ProjectDetailError value) errorProject,
    required TResult Function(ProjectDetailHistoryError value) errorHistory,
  }) {
    return errorProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectDetailInitial value)? initial,
    TResult? Function(ProjectDetailLoaded value)? loaded,
    TResult? Function(ProjectDetailError value)? errorProject,
    TResult? Function(ProjectDetailHistoryError value)? errorHistory,
  }) {
    return errorProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectDetailInitial value)? initial,
    TResult Function(ProjectDetailLoaded value)? loaded,
    TResult Function(ProjectDetailError value)? errorProject,
    TResult Function(ProjectDetailHistoryError value)? errorHistory,
    required TResult orElse(),
  }) {
    if (errorProject != null) {
      return errorProject(this);
    }
    return orElse();
  }
}

abstract class ProjectDetailError implements ProjectDetailState {
  const factory ProjectDetailError(final ProjectFailure failure) =
      _$ProjectDetailErrorImpl;

  ProjectFailure get failure;
  @JsonKey(ignore: true)
  _$$ProjectDetailErrorImplCopyWith<_$ProjectDetailErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProjectDetailHistoryErrorImplCopyWith<$Res> {
  factory _$$ProjectDetailHistoryErrorImplCopyWith(
          _$ProjectDetailHistoryErrorImpl value,
          $Res Function(_$ProjectDetailHistoryErrorImpl) then) =
      __$$ProjectDetailHistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommitGeneratorFailure failure});
}

/// @nodoc
class __$$ProjectDetailHistoryErrorImplCopyWithImpl<$Res>
    extends _$ProjectDetailStateCopyWithImpl<$Res,
        _$ProjectDetailHistoryErrorImpl>
    implements _$$ProjectDetailHistoryErrorImplCopyWith<$Res> {
  __$$ProjectDetailHistoryErrorImplCopyWithImpl(
      _$ProjectDetailHistoryErrorImpl _value,
      $Res Function(_$ProjectDetailHistoryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$ProjectDetailHistoryErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommitGeneratorFailure,
    ));
  }
}

/// @nodoc

class _$ProjectDetailHistoryErrorImpl implements ProjectDetailHistoryError {
  const _$ProjectDetailHistoryErrorImpl(this.failure);

  @override
  final CommitGeneratorFailure failure;

  @override
  String toString() {
    return 'ProjectDetailState.errorHistory(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectDetailHistoryErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectDetailHistoryErrorImplCopyWith<_$ProjectDetailHistoryErrorImpl>
      get copyWith => __$$ProjectDetailHistoryErrorImplCopyWithImpl<
          _$ProjectDetailHistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)
        loaded,
    required TResult Function(ProjectFailure failure) errorProject,
    required TResult Function(CommitGeneratorFailure failure) errorHistory,
  }) {
    return errorHistory(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult? Function(ProjectFailure failure)? errorProject,
    TResult? Function(CommitGeneratorFailure failure)? errorHistory,
  }) {
    return errorHistory?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProjectEntityDto project,
            List<MessageCommitEntityDto> historyCommit)?
        loaded,
    TResult Function(ProjectFailure failure)? errorProject,
    TResult Function(CommitGeneratorFailure failure)? errorHistory,
    required TResult orElse(),
  }) {
    if (errorHistory != null) {
      return errorHistory(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProjectDetailInitial value) initial,
    required TResult Function(ProjectDetailLoaded value) loaded,
    required TResult Function(ProjectDetailError value) errorProject,
    required TResult Function(ProjectDetailHistoryError value) errorHistory,
  }) {
    return errorHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProjectDetailInitial value)? initial,
    TResult? Function(ProjectDetailLoaded value)? loaded,
    TResult? Function(ProjectDetailError value)? errorProject,
    TResult? Function(ProjectDetailHistoryError value)? errorHistory,
  }) {
    return errorHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProjectDetailInitial value)? initial,
    TResult Function(ProjectDetailLoaded value)? loaded,
    TResult Function(ProjectDetailError value)? errorProject,
    TResult Function(ProjectDetailHistoryError value)? errorHistory,
    required TResult orElse(),
  }) {
    if (errorHistory != null) {
      return errorHistory(this);
    }
    return orElse();
  }
}

abstract class ProjectDetailHistoryError implements ProjectDetailState {
  const factory ProjectDetailHistoryError(
      final CommitGeneratorFailure failure) = _$ProjectDetailHistoryErrorImpl;

  CommitGeneratorFailure get failure;
  @JsonKey(ignore: true)
  _$$ProjectDetailHistoryErrorImplCopyWith<_$ProjectDetailHistoryErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

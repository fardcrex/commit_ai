// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_alert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectAlertEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) createProject,
    required TResult Function(ProjectEntityDto project) updateProject,
    required TResult Function(ProjectEntityDto project) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
    TResult? Function(ProjectEntityDto project)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
    TResult Function(ProjectEntityDto project)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProject value) createProject,
    required TResult Function(_UpdateProject value) updateProject,
    required TResult Function(_DeleteProject value) deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectAlertEventCopyWith<$Res> {
  factory $ProjectAlertEventCopyWith(
          ProjectAlertEvent value, $Res Function(ProjectAlertEvent) then) =
      _$ProjectAlertEventCopyWithImpl<$Res, ProjectAlertEvent>;
}

/// @nodoc
class _$ProjectAlertEventCopyWithImpl<$Res, $Val extends ProjectAlertEvent>
    implements $ProjectAlertEventCopyWith<$Res> {
  _$ProjectAlertEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CreateProjectImplCopyWith<$Res> {
  factory _$$CreateProjectImplCopyWith(
          _$CreateProjectImpl value, $Res Function(_$CreateProjectImpl) then) =
      __$$CreateProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$CreateProjectImplCopyWithImpl<$Res>
    extends _$ProjectAlertEventCopyWithImpl<$Res, _$CreateProjectImpl>
    implements _$$CreateProjectImplCopyWith<$Res> {
  __$$CreateProjectImplCopyWithImpl(
      _$CreateProjectImpl _value, $Res Function(_$CreateProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$CreateProjectImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateProjectImpl implements _CreateProject {
  const _$CreateProjectImpl({required this.name, required this.description});

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'ProjectAlertEvent.createProject(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectImplCopyWith<_$CreateProjectImpl> get copyWith =>
      __$$CreateProjectImplCopyWithImpl<_$CreateProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) createProject,
    required TResult Function(ProjectEntityDto project) updateProject,
    required TResult Function(ProjectEntityDto project) deleteProject,
  }) {
    return createProject(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
    TResult? Function(ProjectEntityDto project)? deleteProject,
  }) {
    return createProject?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
    TResult Function(ProjectEntityDto project)? deleteProject,
    required TResult orElse(),
  }) {
    if (createProject != null) {
      return createProject(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProject value) createProject,
    required TResult Function(_UpdateProject value) updateProject,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return createProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return createProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (createProject != null) {
      return createProject(this);
    }
    return orElse();
  }
}

abstract class _CreateProject implements ProjectAlertEvent {
  const factory _CreateProject(
      {required final String name,
      required final String description}) = _$CreateProjectImpl;

  String get name;
  String get description;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateProjectImplCopyWith<_$CreateProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProjectImplCopyWith<$Res> {
  factory _$$UpdateProjectImplCopyWith(
          _$UpdateProjectImpl value, $Res Function(_$UpdateProjectImpl) then) =
      __$$UpdateProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectEntityDto project});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class __$$UpdateProjectImplCopyWithImpl<$Res>
    extends _$ProjectAlertEventCopyWithImpl<$Res, _$UpdateProjectImpl>
    implements _$$UpdateProjectImplCopyWith<$Res> {
  __$$UpdateProjectImplCopyWithImpl(
      _$UpdateProjectImpl _value, $Res Function(_$UpdateProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$UpdateProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get project {
    return $ProjectEntityDtoCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$UpdateProjectImpl implements _UpdateProject {
  const _$UpdateProjectImpl({required this.project});

  @override
  final ProjectEntityDto project;

  @override
  String toString() {
    return 'ProjectAlertEvent.updateProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProjectImplCopyWith<_$UpdateProjectImpl> get copyWith =>
      __$$UpdateProjectImplCopyWithImpl<_$UpdateProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) createProject,
    required TResult Function(ProjectEntityDto project) updateProject,
    required TResult Function(ProjectEntityDto project) deleteProject,
  }) {
    return updateProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
    TResult? Function(ProjectEntityDto project)? deleteProject,
  }) {
    return updateProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
    TResult Function(ProjectEntityDto project)? deleteProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProject value) createProject,
    required TResult Function(_UpdateProject value) updateProject,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return updateProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return updateProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (updateProject != null) {
      return updateProject(this);
    }
    return orElse();
  }
}

abstract class _UpdateProject implements ProjectAlertEvent {
  const factory _UpdateProject({required final ProjectEntityDto project}) =
      _$UpdateProjectImpl;

  ProjectEntityDto get project;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProjectImplCopyWith<_$UpdateProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProjectImplCopyWith<$Res> {
  factory _$$DeleteProjectImplCopyWith(
          _$DeleteProjectImpl value, $Res Function(_$DeleteProjectImpl) then) =
      __$$DeleteProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectEntityDto project});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class __$$DeleteProjectImplCopyWithImpl<$Res>
    extends _$ProjectAlertEventCopyWithImpl<$Res, _$DeleteProjectImpl>
    implements _$$DeleteProjectImplCopyWith<$Res> {
  __$$DeleteProjectImplCopyWithImpl(
      _$DeleteProjectImpl _value, $Res Function(_$DeleteProjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$DeleteProjectImpl(
      project: null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get project {
    return $ProjectEntityDtoCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$DeleteProjectImpl implements _DeleteProject {
  const _$DeleteProjectImpl({required this.project});

  @override
  final ProjectEntityDto project;

  @override
  String toString() {
    return 'ProjectAlertEvent.deleteProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      __$$DeleteProjectImplCopyWithImpl<_$DeleteProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) createProject,
    required TResult Function(ProjectEntityDto project) updateProject,
    required TResult Function(ProjectEntityDto project) deleteProject,
  }) {
    return deleteProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
    TResult? Function(ProjectEntityDto project)? deleteProject,
  }) {
    return deleteProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
    TResult Function(ProjectEntityDto project)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProject value) createProject,
    required TResult Function(_UpdateProject value) updateProject,
    required TResult Function(_DeleteProject value) deleteProject,
  }) {
    return deleteProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
    TResult? Function(_DeleteProject value)? deleteProject,
  }) {
    return deleteProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
    TResult Function(_DeleteProject value)? deleteProject,
    required TResult orElse(),
  }) {
    if (deleteProject != null) {
      return deleteProject(this);
    }
    return orElse();
  }
}

abstract class _DeleteProject implements ProjectAlertEvent {
  const factory _DeleteProject({required final ProjectEntityDto project}) =
      _$DeleteProjectImpl;

  ProjectEntityDto get project;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProjectImplCopyWith<_$DeleteProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectAlertState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormError value) error,
    required TResult Function(FormSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormError value)? error,
    TResult? Function(FormSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormError value)? error,
    TResult Function(FormSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectAlertStateCopyWith<$Res> {
  factory $ProjectAlertStateCopyWith(
          ProjectAlertState value, $Res Function(ProjectAlertState) then) =
      _$ProjectAlertStateCopyWithImpl<$Res, ProjectAlertState>;
}

/// @nodoc
class _$ProjectAlertStateCopyWithImpl<$Res, $Val extends ProjectAlertState>
    implements $ProjectAlertStateCopyWith<$Res> {
  _$ProjectAlertStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FormInitialImplCopyWith<$Res> {
  factory _$$FormInitialImplCopyWith(
          _$FormInitialImpl value, $Res Function(_$FormInitialImpl) then) =
      __$$FormInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormInitialImplCopyWithImpl<$Res>
    extends _$ProjectAlertStateCopyWithImpl<$Res, _$FormInitialImpl>
    implements _$$FormInitialImplCopyWith<$Res> {
  __$$FormInitialImplCopyWithImpl(
      _$FormInitialImpl _value, $Res Function(_$FormInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormInitialImpl implements FormInitial {
  const _$FormInitialImpl();

  @override
  String toString() {
    return 'ProjectAlertState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
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
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormError value) error,
    required TResult Function(FormSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormError value)? error,
    TResult? Function(FormSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormError value)? error,
    TResult Function(FormSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormInitial implements ProjectAlertState {
  const factory FormInitial() = _$FormInitialImpl;
}

/// @nodoc
abstract class _$$FormLoadingImplCopyWith<$Res> {
  factory _$$FormLoadingImplCopyWith(
          _$FormLoadingImpl value, $Res Function(_$FormLoadingImpl) then) =
      __$$FormLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormLoadingImplCopyWithImpl<$Res>
    extends _$ProjectAlertStateCopyWithImpl<$Res, _$FormLoadingImpl>
    implements _$$FormLoadingImplCopyWith<$Res> {
  __$$FormLoadingImplCopyWithImpl(
      _$FormLoadingImpl _value, $Res Function(_$FormLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormLoadingImpl implements FormLoading {
  const _$FormLoadingImpl();

  @override
  String toString() {
    return 'ProjectAlertState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormError value) error,
    required TResult Function(FormSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormError value)? error,
    TResult? Function(FormSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormError value)? error,
    TResult Function(FormSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FormLoading implements ProjectAlertState {
  const factory FormLoading() = _$FormLoadingImpl;
}

/// @nodoc
abstract class _$$FormErrorImplCopyWith<$Res> {
  factory _$$FormErrorImplCopyWith(
          _$FormErrorImpl value, $Res Function(_$FormErrorImpl) then) =
      __$$FormErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FormErrorImplCopyWithImpl<$Res>
    extends _$ProjectAlertStateCopyWithImpl<$Res, _$FormErrorImpl>
    implements _$$FormErrorImplCopyWith<$Res> {
  __$$FormErrorImplCopyWithImpl(
      _$FormErrorImpl _value, $Res Function(_$FormErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FormErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormErrorImpl implements FormError {
  const _$FormErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProjectAlertState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormErrorImplCopyWith<_$FormErrorImpl> get copyWith =>
      __$$FormErrorImplCopyWithImpl<_$FormErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormError value) error,
    required TResult Function(FormSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormError value)? error,
    TResult? Function(FormSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormError value)? error,
    TResult Function(FormSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormError implements ProjectAlertState {
  const factory FormError(final String message) = _$FormErrorImpl;

  String get message;

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormErrorImplCopyWith<_$FormErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSuccessImplCopyWith<$Res> {
  factory _$$FormSuccessImplCopyWith(
          _$FormSuccessImpl value, $Res Function(_$FormSuccessImpl) then) =
      __$$FormSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSuccessImplCopyWithImpl<$Res>
    extends _$ProjectAlertStateCopyWithImpl<$Res, _$FormSuccessImpl>
    implements _$$FormSuccessImplCopyWith<$Res> {
  __$$FormSuccessImplCopyWithImpl(
      _$FormSuccessImpl _value, $Res Function(_$FormSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FormSuccessImpl implements FormSuccess {
  const _$FormSuccessImpl();

  @override
  String toString() {
    return 'ProjectAlertState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormError value) error,
    required TResult Function(FormSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormError value)? error,
    TResult? Function(FormSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormError value)? error,
    TResult Function(FormSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FormSuccess implements ProjectAlertState {
  const factory FormSuccess() = _$FormSuccessImpl;
}

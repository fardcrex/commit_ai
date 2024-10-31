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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateProject value) createProject,
    required TResult Function(_UpdateProject value) updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
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
  }) {
    return createProject(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
  }) {
    return createProject?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
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
  }) {
    return createProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
  }) {
    return createProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
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
    Object? project = freezed,
  }) {
    return _then(_$UpdateProjectImpl(
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
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
            const DeepCollectionEquality().equals(other.project, project));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(project));

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
  }) {
    return updateProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? createProject,
    TResult? Function(ProjectEntityDto project)? updateProject,
  }) {
    return updateProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? createProject,
    TResult Function(ProjectEntityDto project)? updateProject,
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
  }) {
    return updateProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateProject value)? createProject,
    TResult? Function(_UpdateProject value)? updateProject,
  }) {
    return updateProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateProject value)? createProject,
    TResult Function(_UpdateProject value)? updateProject,
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
mixin _$ProjectAlertState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProjectAlertStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProjectAlertState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProjectAlertState {
  const factory _Initial() = _$InitialImpl;
}
// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_alert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectAlertEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectAlertEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectAlertEvent()';
  }
}

/// @nodoc
class $ProjectAlertEventCopyWith<$Res> {
  $ProjectAlertEventCopyWith(
      ProjectAlertEvent _, $Res Function(ProjectAlertEvent) __);
}

/// @nodoc

class _CreateProject implements ProjectAlertEvent {
  const _CreateProject(
      {required this.name, required this.description, required this.path});

  final String name;
  final String description;
  final String? path;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CreateProjectCopyWith<_CreateProject> get copyWith =>
      __$CreateProjectCopyWithImpl<_CreateProject>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProject &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, path);

  @override
  String toString() {
    return 'ProjectAlertEvent.createProject(name: $name, description: $description, path: $path)';
  }
}

/// @nodoc
abstract mixin class _$CreateProjectCopyWith<$Res>
    implements $ProjectAlertEventCopyWith<$Res> {
  factory _$CreateProjectCopyWith(
          _CreateProject value, $Res Function(_CreateProject) _then) =
      __$CreateProjectCopyWithImpl;
  @useResult
  $Res call({String name, String description, String? path});
}

/// @nodoc
class __$CreateProjectCopyWithImpl<$Res>
    implements _$CreateProjectCopyWith<$Res> {
  __$CreateProjectCopyWithImpl(this._self, this._then);

  final _CreateProject _self;
  final $Res Function(_CreateProject) _then;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? path = freezed,
  }) {
    return _then(_CreateProject(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _UpdateProject implements ProjectAlertEvent {
  const _UpdateProject({required this.project});

  final ProjectEntityDto project;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateProjectCopyWith<_UpdateProject> get copyWith =>
      __$UpdateProjectCopyWithImpl<_UpdateProject>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProject &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @override
  String toString() {
    return 'ProjectAlertEvent.updateProject(project: $project)';
  }
}

/// @nodoc
abstract mixin class _$UpdateProjectCopyWith<$Res>
    implements $ProjectAlertEventCopyWith<$Res> {
  factory _$UpdateProjectCopyWith(
          _UpdateProject value, $Res Function(_UpdateProject) _then) =
      __$UpdateProjectCopyWithImpl;
  @useResult
  $Res call({ProjectEntityDto project});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class __$UpdateProjectCopyWithImpl<$Res>
    implements _$UpdateProjectCopyWith<$Res> {
  __$UpdateProjectCopyWithImpl(this._self, this._then);

  final _UpdateProject _self;
  final $Res Function(_UpdateProject) _then;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? project = null,
  }) {
    return _then(_UpdateProject(
      project: null == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  /// Create a copy of ProjectAlertEvent
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

class _DeleteProject implements ProjectAlertEvent {
  const _DeleteProject({required this.project});

  final ProjectEntityDto project;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeleteProjectCopyWith<_DeleteProject> get copyWith =>
      __$DeleteProjectCopyWithImpl<_DeleteProject>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteProject &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @override
  String toString() {
    return 'ProjectAlertEvent.deleteProject(project: $project)';
  }
}

/// @nodoc
abstract mixin class _$DeleteProjectCopyWith<$Res>
    implements $ProjectAlertEventCopyWith<$Res> {
  factory _$DeleteProjectCopyWith(
          _DeleteProject value, $Res Function(_DeleteProject) _then) =
      __$DeleteProjectCopyWithImpl;
  @useResult
  $Res call({ProjectEntityDto project});

  $ProjectEntityDtoCopyWith<$Res> get project;
}

/// @nodoc
class __$DeleteProjectCopyWithImpl<$Res>
    implements _$DeleteProjectCopyWith<$Res> {
  __$DeleteProjectCopyWithImpl(this._self, this._then);

  final _DeleteProject _self;
  final $Res Function(_DeleteProject) _then;

  /// Create a copy of ProjectAlertEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? project = null,
  }) {
    return _then(_DeleteProject(
      project: null == project
          ? _self.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  /// Create a copy of ProjectAlertEvent
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
mixin _$ProjectAlertState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ProjectAlertState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectAlertState()';
  }
}

/// @nodoc
class $ProjectAlertStateCopyWith<$Res> {
  $ProjectAlertStateCopyWith(
      ProjectAlertState _, $Res Function(ProjectAlertState) __);
}

/// @nodoc

class FormInitial implements ProjectAlertState {
  const FormInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectAlertState.initial()';
  }
}

/// @nodoc

class FormLoading implements ProjectAlertState {
  const FormLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectAlertState.loading()';
  }
}

/// @nodoc

class FormError implements ProjectAlertState {
  const FormError(this.message);

  final String message;

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormErrorCopyWith<FormError> get copyWith =>
      _$FormErrorCopyWithImpl<FormError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ProjectAlertState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FormErrorCopyWith<$Res>
    implements $ProjectAlertStateCopyWith<$Res> {
  factory $FormErrorCopyWith(FormError value, $Res Function(FormError) _then) =
      _$FormErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FormErrorCopyWithImpl<$Res> implements $FormErrorCopyWith<$Res> {
  _$FormErrorCopyWithImpl(this._self, this._then);

  final FormError _self;
  final $Res Function(FormError) _then;

  /// Create a copy of ProjectAlertState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(FormError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FormSuccess implements ProjectAlertState {
  const FormSuccess();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ProjectAlertState.success()';
  }
}

// dart format on

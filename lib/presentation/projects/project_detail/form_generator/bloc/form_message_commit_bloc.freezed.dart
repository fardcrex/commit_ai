// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_message_commit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormMessageCommitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormGeneratorCommit formGeneratorCommit)
        generateMessageCommit,
    required TResult Function(ProjectEntityDto projectEntityDto) editProject,
    required TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)
        saveMessageCommit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult? Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult? Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateMessageCommit value)
        generateMessageCommit,
    required TResult Function(EditProject value) editProject,
    required TResult Function(SaveMessageCommit value) saveMessageCommit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult? Function(EditProject value)? editProject,
    TResult? Function(SaveMessageCommit value)? saveMessageCommit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult Function(EditProject value)? editProject,
    TResult Function(SaveMessageCommit value)? saveMessageCommit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormMessageCommitEventCopyWith<$Res> {
  factory $FormMessageCommitEventCopyWith(FormMessageCommitEvent value,
          $Res Function(FormMessageCommitEvent) then) =
      _$FormMessageCommitEventCopyWithImpl<$Res, FormMessageCommitEvent>;
}

/// @nodoc
class _$FormMessageCommitEventCopyWithImpl<$Res,
        $Val extends FormMessageCommitEvent>
    implements $FormMessageCommitEventCopyWith<$Res> {
  _$FormMessageCommitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateMessageCommitImplCopyWith<$Res> {
  factory _$$GenerateMessageCommitImplCopyWith(
          _$GenerateMessageCommitImpl value,
          $Res Function(_$GenerateMessageCommitImpl) then) =
      __$$GenerateMessageCommitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FormGeneratorCommit formGeneratorCommit});

  $FormGeneratorCommitCopyWith<$Res> get formGeneratorCommit;
}

/// @nodoc
class __$$GenerateMessageCommitImplCopyWithImpl<$Res>
    extends _$FormMessageCommitEventCopyWithImpl<$Res,
        _$GenerateMessageCommitImpl>
    implements _$$GenerateMessageCommitImplCopyWith<$Res> {
  __$$GenerateMessageCommitImplCopyWithImpl(_$GenerateMessageCommitImpl _value,
      $Res Function(_$GenerateMessageCommitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formGeneratorCommit = null,
  }) {
    return _then(_$GenerateMessageCommitImpl(
      null == formGeneratorCommit
          ? _value.formGeneratorCommit
          : formGeneratorCommit // ignore: cast_nullable_to_non_nullable
              as FormGeneratorCommit,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FormGeneratorCommitCopyWith<$Res> get formGeneratorCommit {
    return $FormGeneratorCommitCopyWith<$Res>(_value.formGeneratorCommit,
        (value) {
      return _then(_value.copyWith(formGeneratorCommit: value));
    });
  }
}

/// @nodoc

class _$GenerateMessageCommitImpl implements GenerateMessageCommit {
  const _$GenerateMessageCommitImpl(this.formGeneratorCommit);

  @override
  final FormGeneratorCommit formGeneratorCommit;

  @override
  String toString() {
    return 'FormMessageCommitEvent.generateMessageCommit(formGeneratorCommit: $formGeneratorCommit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateMessageCommitImpl &&
            (identical(other.formGeneratorCommit, formGeneratorCommit) ||
                other.formGeneratorCommit == formGeneratorCommit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formGeneratorCommit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateMessageCommitImplCopyWith<_$GenerateMessageCommitImpl>
      get copyWith => __$$GenerateMessageCommitImplCopyWithImpl<
          _$GenerateMessageCommitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormGeneratorCommit formGeneratorCommit)
        generateMessageCommit,
    required TResult Function(ProjectEntityDto projectEntityDto) editProject,
    required TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)
        saveMessageCommit,
  }) {
    return generateMessageCommit(formGeneratorCommit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult? Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult? Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
  }) {
    return generateMessageCommit?.call(formGeneratorCommit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
    required TResult orElse(),
  }) {
    if (generateMessageCommit != null) {
      return generateMessageCommit(formGeneratorCommit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateMessageCommit value)
        generateMessageCommit,
    required TResult Function(EditProject value) editProject,
    required TResult Function(SaveMessageCommit value) saveMessageCommit,
  }) {
    return generateMessageCommit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult? Function(EditProject value)? editProject,
    TResult? Function(SaveMessageCommit value)? saveMessageCommit,
  }) {
    return generateMessageCommit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult Function(EditProject value)? editProject,
    TResult Function(SaveMessageCommit value)? saveMessageCommit,
    required TResult orElse(),
  }) {
    if (generateMessageCommit != null) {
      return generateMessageCommit(this);
    }
    return orElse();
  }
}

abstract class GenerateMessageCommit implements FormMessageCommitEvent {
  const factory GenerateMessageCommit(
          final FormGeneratorCommit formGeneratorCommit) =
      _$GenerateMessageCommitImpl;

  FormGeneratorCommit get formGeneratorCommit;
  @JsonKey(ignore: true)
  _$$GenerateMessageCommitImplCopyWith<_$GenerateMessageCommitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProjectImplCopyWith<$Res> {
  factory _$$EditProjectImplCopyWith(
          _$EditProjectImpl value, $Res Function(_$EditProjectImpl) then) =
      __$$EditProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectEntityDto projectEntityDto});

  $ProjectEntityDtoCopyWith<$Res> get projectEntityDto;
}

/// @nodoc
class __$$EditProjectImplCopyWithImpl<$Res>
    extends _$FormMessageCommitEventCopyWithImpl<$Res, _$EditProjectImpl>
    implements _$$EditProjectImplCopyWith<$Res> {
  __$$EditProjectImplCopyWithImpl(
      _$EditProjectImpl _value, $Res Function(_$EditProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectEntityDto = null,
  }) {
    return _then(_$EditProjectImpl(
      null == projectEntityDto
          ? _value.projectEntityDto
          : projectEntityDto // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get projectEntityDto {
    return $ProjectEntityDtoCopyWith<$Res>(_value.projectEntityDto, (value) {
      return _then(_value.copyWith(projectEntityDto: value));
    });
  }
}

/// @nodoc

class _$EditProjectImpl implements EditProject {
  const _$EditProjectImpl(this.projectEntityDto);

  @override
  final ProjectEntityDto projectEntityDto;

  @override
  String toString() {
    return 'FormMessageCommitEvent.editProject(projectEntityDto: $projectEntityDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProjectImpl &&
            (identical(other.projectEntityDto, projectEntityDto) ||
                other.projectEntityDto == projectEntityDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectEntityDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProjectImplCopyWith<_$EditProjectImpl> get copyWith =>
      __$$EditProjectImplCopyWithImpl<_$EditProjectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormGeneratorCommit formGeneratorCommit)
        generateMessageCommit,
    required TResult Function(ProjectEntityDto projectEntityDto) editProject,
    required TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)
        saveMessageCommit,
  }) {
    return editProject(projectEntityDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult? Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult? Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
  }) {
    return editProject?.call(projectEntityDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
    required TResult orElse(),
  }) {
    if (editProject != null) {
      return editProject(projectEntityDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateMessageCommit value)
        generateMessageCommit,
    required TResult Function(EditProject value) editProject,
    required TResult Function(SaveMessageCommit value) saveMessageCommit,
  }) {
    return editProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult? Function(EditProject value)? editProject,
    TResult? Function(SaveMessageCommit value)? saveMessageCommit,
  }) {
    return editProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult Function(EditProject value)? editProject,
    TResult Function(SaveMessageCommit value)? saveMessageCommit,
    required TResult orElse(),
  }) {
    if (editProject != null) {
      return editProject(this);
    }
    return orElse();
  }
}

abstract class EditProject implements FormMessageCommitEvent {
  const factory EditProject(final ProjectEntityDto projectEntityDto) =
      _$EditProjectImpl;

  ProjectEntityDto get projectEntityDto;
  @JsonKey(ignore: true)
  _$$EditProjectImplCopyWith<_$EditProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveMessageCommitImplCopyWith<$Res> {
  factory _$$SaveMessageCommitImplCopyWith(_$SaveMessageCommitImpl value,
          $Res Function(_$SaveMessageCommitImpl) then) =
      __$$SaveMessageCommitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultIaMessageCommit resultIaMessageCommit, String projectId});

  $ResultIaMessageCommitCopyWith<$Res> get resultIaMessageCommit;
}

/// @nodoc
class __$$SaveMessageCommitImplCopyWithImpl<$Res>
    extends _$FormMessageCommitEventCopyWithImpl<$Res, _$SaveMessageCommitImpl>
    implements _$$SaveMessageCommitImplCopyWith<$Res> {
  __$$SaveMessageCommitImplCopyWithImpl(_$SaveMessageCommitImpl _value,
      $Res Function(_$SaveMessageCommitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultIaMessageCommit = null,
    Object? projectId = null,
  }) {
    return _then(_$SaveMessageCommitImpl(
      null == resultIaMessageCommit
          ? _value.resultIaMessageCommit
          : resultIaMessageCommit // ignore: cast_nullable_to_non_nullable
              as ResultIaMessageCommit,
      null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultIaMessageCommitCopyWith<$Res> get resultIaMessageCommit {
    return $ResultIaMessageCommitCopyWith<$Res>(_value.resultIaMessageCommit,
        (value) {
      return _then(_value.copyWith(resultIaMessageCommit: value));
    });
  }
}

/// @nodoc

class _$SaveMessageCommitImpl implements SaveMessageCommit {
  const _$SaveMessageCommitImpl(this.resultIaMessageCommit, this.projectId);

  @override
  final ResultIaMessageCommit resultIaMessageCommit;
  @override
  final String projectId;

  @override
  String toString() {
    return 'FormMessageCommitEvent.saveMessageCommit(resultIaMessageCommit: $resultIaMessageCommit, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveMessageCommitImpl &&
            (identical(other.resultIaMessageCommit, resultIaMessageCommit) ||
                other.resultIaMessageCommit == resultIaMessageCommit) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resultIaMessageCommit, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveMessageCommitImplCopyWith<_$SaveMessageCommitImpl> get copyWith =>
      __$$SaveMessageCommitImplCopyWithImpl<_$SaveMessageCommitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormGeneratorCommit formGeneratorCommit)
        generateMessageCommit,
    required TResult Function(ProjectEntityDto projectEntityDto) editProject,
    required TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)
        saveMessageCommit,
  }) {
    return saveMessageCommit(resultIaMessageCommit, projectId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult? Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult? Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
  }) {
    return saveMessageCommit?.call(resultIaMessageCommit, projectId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormGeneratorCommit formGeneratorCommit)?
        generateMessageCommit,
    TResult Function(ProjectEntityDto projectEntityDto)? editProject,
    TResult Function(
            ResultIaMessageCommit resultIaMessageCommit, String projectId)?
        saveMessageCommit,
    required TResult orElse(),
  }) {
    if (saveMessageCommit != null) {
      return saveMessageCommit(resultIaMessageCommit, projectId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateMessageCommit value)
        generateMessageCommit,
    required TResult Function(EditProject value) editProject,
    required TResult Function(SaveMessageCommit value) saveMessageCommit,
  }) {
    return saveMessageCommit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult? Function(EditProject value)? editProject,
    TResult? Function(SaveMessageCommit value)? saveMessageCommit,
  }) {
    return saveMessageCommit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateMessageCommit value)? generateMessageCommit,
    TResult Function(EditProject value)? editProject,
    TResult Function(SaveMessageCommit value)? saveMessageCommit,
    required TResult orElse(),
  }) {
    if (saveMessageCommit != null) {
      return saveMessageCommit(this);
    }
    return orElse();
  }
}

abstract class SaveMessageCommit implements FormMessageCommitEvent {
  const factory SaveMessageCommit(
      final ResultIaMessageCommit resultIaMessageCommit,
      final String projectId) = _$SaveMessageCommitImpl;

  ResultIaMessageCommit get resultIaMessageCommit;
  String get projectId;
  @JsonKey(ignore: true)
  _$$SaveMessageCommitImplCopyWith<_$SaveMessageCommitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormMessageCommitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormMessageCommitStateCopyWith<$Res> {
  factory $FormMessageCommitStateCopyWith(FormMessageCommitState value,
          $Res Function(FormMessageCommitState) then) =
      _$FormMessageCommitStateCopyWithImpl<$Res, FormMessageCommitState>;
}

/// @nodoc
class _$FormMessageCommitStateCopyWithImpl<$Res,
        $Val extends FormMessageCommitState>
    implements $FormMessageCommitStateCopyWith<$Res> {
  _$FormMessageCommitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormInitialImplCopyWith<$Res> {
  factory _$$FormInitialImplCopyWith(
          _$FormInitialImpl value, $Res Function(_$FormInitialImpl) then) =
      __$$FormInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormInitialImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res, _$FormInitialImpl>
    implements _$$FormInitialImplCopyWith<$Res> {
  __$$FormInitialImplCopyWithImpl(
      _$FormInitialImpl _value, $Res Function(_$FormInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormInitialImpl extends FormInitial {
  const _$FormInitialImpl() : super._();

  @override
  String toString() {
    return 'FormMessageCommitState.initial()';
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
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
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
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FormInitial extends FormMessageCommitState {
  const factory FormInitial() = _$FormInitialImpl;
  const FormInitial._() : super._();
}

/// @nodoc
abstract class _$$FormLoadingImplCopyWith<$Res> {
  factory _$$FormLoadingImplCopyWith(
          _$FormLoadingImpl value, $Res Function(_$FormLoadingImpl) then) =
      __$$FormLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormLoadingImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res, _$FormLoadingImpl>
    implements _$$FormLoadingImplCopyWith<$Res> {
  __$$FormLoadingImplCopyWithImpl(
      _$FormLoadingImpl _value, $Res Function(_$FormLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormLoadingImpl extends FormLoading {
  const _$FormLoadingImpl() : super._();

  @override
  String toString() {
    return 'FormMessageCommitState.loading()';
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
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
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
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FormLoading extends FormMessageCommitState {
  const factory FormLoading() = _$FormLoadingImpl;
  const FormLoading._() : super._();
}

/// @nodoc
abstract class _$$FormSuccessGenerateImplCopyWith<$Res> {
  factory _$$FormSuccessGenerateImplCopyWith(_$FormSuccessGenerateImpl value,
          $Res Function(_$FormSuccessGenerateImpl) then) =
      __$$FormSuccessGenerateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResultIaMessageCommit result});

  $ResultIaMessageCommitCopyWith<$Res> get result;
}

/// @nodoc
class __$$FormSuccessGenerateImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res,
        _$FormSuccessGenerateImpl>
    implements _$$FormSuccessGenerateImplCopyWith<$Res> {
  __$$FormSuccessGenerateImplCopyWithImpl(_$FormSuccessGenerateImpl _value,
      $Res Function(_$FormSuccessGenerateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FormSuccessGenerateImpl(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultIaMessageCommit,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultIaMessageCommitCopyWith<$Res> get result {
    return $ResultIaMessageCommitCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$FormSuccessGenerateImpl extends FormSuccessGenerate {
  const _$FormSuccessGenerateImpl(this.result) : super._();

  @override
  final ResultIaMessageCommit result;

  @override
  String toString() {
    return 'FormMessageCommitState.successGenerate(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormSuccessGenerateImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormSuccessGenerateImplCopyWith<_$FormSuccessGenerateImpl> get copyWith =>
      __$$FormSuccessGenerateImplCopyWithImpl<_$FormSuccessGenerateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return successGenerate(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return successGenerate?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
    required TResult orElse(),
  }) {
    if (successGenerate != null) {
      return successGenerate(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return successGenerate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return successGenerate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (successGenerate != null) {
      return successGenerate(this);
    }
    return orElse();
  }
}

abstract class FormSuccessGenerate extends FormMessageCommitState {
  const factory FormSuccessGenerate(final ResultIaMessageCommit result) =
      _$FormSuccessGenerateImpl;
  const FormSuccessGenerate._() : super._();

  ResultIaMessageCommit get result;
  @JsonKey(ignore: true)
  _$$FormSuccessGenerateImplCopyWith<_$FormSuccessGenerateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSuccessEditImplCopyWith<$Res> {
  factory _$$FormSuccessEditImplCopyWith(_$FormSuccessEditImpl value,
          $Res Function(_$FormSuccessEditImpl) then) =
      __$$FormSuccessEditImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSuccessEditImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res, _$FormSuccessEditImpl>
    implements _$$FormSuccessEditImplCopyWith<$Res> {
  __$$FormSuccessEditImplCopyWithImpl(
      _$FormSuccessEditImpl _value, $Res Function(_$FormSuccessEditImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormSuccessEditImpl extends FormSuccessEdit {
  const _$FormSuccessEditImpl() : super._();

  @override
  String toString() {
    return 'FormMessageCommitState.successEdit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSuccessEditImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return successEdit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return successEdit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
    required TResult orElse(),
  }) {
    if (successEdit != null) {
      return successEdit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return successEdit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return successEdit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (successEdit != null) {
      return successEdit(this);
    }
    return orElse();
  }
}

abstract class FormSuccessEdit extends FormMessageCommitState {
  const factory FormSuccessEdit() = _$FormSuccessEditImpl;
  const FormSuccessEdit._() : super._();
}

/// @nodoc
abstract class _$$FormSuccessSaveImplCopyWith<$Res> {
  factory _$$FormSuccessSaveImplCopyWith(_$FormSuccessSaveImpl value,
          $Res Function(_$FormSuccessSaveImpl) then) =
      __$$FormSuccessSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSuccessSaveImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res, _$FormSuccessSaveImpl>
    implements _$$FormSuccessSaveImplCopyWith<$Res> {
  __$$FormSuccessSaveImplCopyWithImpl(
      _$FormSuccessSaveImpl _value, $Res Function(_$FormSuccessSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormSuccessSaveImpl extends FormSuccessSave {
  const _$FormSuccessSaveImpl() : super._();

  @override
  String toString() {
    return 'FormMessageCommitState.successSave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSuccessSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return successSave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return successSave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
    required TResult orElse(),
  }) {
    if (successSave != null) {
      return successSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return successSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return successSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (successSave != null) {
      return successSave(this);
    }
    return orElse();
  }
}

abstract class FormSuccessSave extends FormMessageCommitState {
  const factory FormSuccessSave() = _$FormSuccessSaveImpl;
  const FormSuccessSave._() : super._();
}

/// @nodoc
abstract class _$$FormErrorImplCopyWith<$Res> {
  factory _$$FormErrorImplCopyWith(
          _$FormErrorImpl value, $Res Function(_$FormErrorImpl) then) =
      __$$FormErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CommitGeneratorFailure failure});
}

/// @nodoc
class __$$FormErrorImplCopyWithImpl<$Res>
    extends _$FormMessageCommitStateCopyWithImpl<$Res, _$FormErrorImpl>
    implements _$$FormErrorImplCopyWith<$Res> {
  __$$FormErrorImplCopyWithImpl(
      _$FormErrorImpl _value, $Res Function(_$FormErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FormErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommitGeneratorFailure,
    ));
  }
}

/// @nodoc

class _$FormErrorImpl extends FormError {
  const _$FormErrorImpl(this.failure) : super._();

  @override
  final CommitGeneratorFailure failure;

  @override
  String toString() {
    return 'FormMessageCommitState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormErrorImplCopyWith<_$FormErrorImpl> get copyWith =>
      __$$FormErrorImplCopyWithImpl<_$FormErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ResultIaMessageCommit result) successGenerate,
    required TResult Function() successEdit,
    required TResult Function() successSave,
    required TResult Function(CommitGeneratorFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ResultIaMessageCommit result)? successGenerate,
    TResult? Function()? successEdit,
    TResult? Function()? successSave,
    TResult? Function(CommitGeneratorFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ResultIaMessageCommit result)? successGenerate,
    TResult Function()? successEdit,
    TResult Function()? successSave,
    TResult Function(CommitGeneratorFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormInitial value) initial,
    required TResult Function(FormLoading value) loading,
    required TResult Function(FormSuccessGenerate value) successGenerate,
    required TResult Function(FormSuccessEdit value) successEdit,
    required TResult Function(FormSuccessSave value) successSave,
    required TResult Function(FormError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FormInitial value)? initial,
    TResult? Function(FormLoading value)? loading,
    TResult? Function(FormSuccessGenerate value)? successGenerate,
    TResult? Function(FormSuccessEdit value)? successEdit,
    TResult? Function(FormSuccessSave value)? successSave,
    TResult? Function(FormError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormInitial value)? initial,
    TResult Function(FormLoading value)? loading,
    TResult Function(FormSuccessGenerate value)? successGenerate,
    TResult Function(FormSuccessEdit value)? successEdit,
    TResult Function(FormSuccessSave value)? successSave,
    TResult Function(FormError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FormError extends FormMessageCommitState {
  const factory FormError(final CommitGeneratorFailure failure) =
      _$FormErrorImpl;
  const FormError._() : super._();

  CommitGeneratorFailure get failure;
  @JsonKey(ignore: true)
  _$$FormErrorImplCopyWith<_$FormErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

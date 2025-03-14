// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_message_commit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormMessageCommitEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormMessageCommitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitEvent()';
  }
}

/// @nodoc
class $FormMessageCommitEventCopyWith<$Res> {
  $FormMessageCommitEventCopyWith(
      FormMessageCommitEvent _, $Res Function(FormMessageCommitEvent) __);
}

/// @nodoc

class GenerateMessageCommit implements FormMessageCommitEvent {
  const GenerateMessageCommit(this.formGeneratorCommit);

  final FormGeneratorCommit formGeneratorCommit;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GenerateMessageCommitCopyWith<GenerateMessageCommit> get copyWith =>
      _$GenerateMessageCommitCopyWithImpl<GenerateMessageCommit>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GenerateMessageCommit &&
            (identical(other.formGeneratorCommit, formGeneratorCommit) ||
                other.formGeneratorCommit == formGeneratorCommit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formGeneratorCommit);

  @override
  String toString() {
    return 'FormMessageCommitEvent.generateMessageCommit(formGeneratorCommit: $formGeneratorCommit)';
  }
}

/// @nodoc
abstract mixin class $GenerateMessageCommitCopyWith<$Res>
    implements $FormMessageCommitEventCopyWith<$Res> {
  factory $GenerateMessageCommitCopyWith(GenerateMessageCommit value,
          $Res Function(GenerateMessageCommit) _then) =
      _$GenerateMessageCommitCopyWithImpl;
  @useResult
  $Res call({FormGeneratorCommit formGeneratorCommit});

  $FormGeneratorCommitCopyWith<$Res> get formGeneratorCommit;
}

/// @nodoc
class _$GenerateMessageCommitCopyWithImpl<$Res>
    implements $GenerateMessageCommitCopyWith<$Res> {
  _$GenerateMessageCommitCopyWithImpl(this._self, this._then);

  final GenerateMessageCommit _self;
  final $Res Function(GenerateMessageCommit) _then;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? formGeneratorCommit = null,
  }) {
    return _then(GenerateMessageCommit(
      null == formGeneratorCommit
          ? _self.formGeneratorCommit
          : formGeneratorCommit // ignore: cast_nullable_to_non_nullable
              as FormGeneratorCommit,
    ));
  }

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormGeneratorCommitCopyWith<$Res> get formGeneratorCommit {
    return $FormGeneratorCommitCopyWith<$Res>(_self.formGeneratorCommit,
        (value) {
      return _then(_self.copyWith(formGeneratorCommit: value));
    });
  }
}

/// @nodoc

class EditProject implements FormMessageCommitEvent {
  const EditProject(this.projectEntityDto);

  final ProjectEntityDto projectEntityDto;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProjectCopyWith<EditProject> get copyWith =>
      _$EditProjectCopyWithImpl<EditProject>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProject &&
            (identical(other.projectEntityDto, projectEntityDto) ||
                other.projectEntityDto == projectEntityDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectEntityDto);

  @override
  String toString() {
    return 'FormMessageCommitEvent.editProject(projectEntityDto: $projectEntityDto)';
  }
}

/// @nodoc
abstract mixin class $EditProjectCopyWith<$Res>
    implements $FormMessageCommitEventCopyWith<$Res> {
  factory $EditProjectCopyWith(
          EditProject value, $Res Function(EditProject) _then) =
      _$EditProjectCopyWithImpl;
  @useResult
  $Res call({ProjectEntityDto projectEntityDto});

  $ProjectEntityDtoCopyWith<$Res> get projectEntityDto;
}

/// @nodoc
class _$EditProjectCopyWithImpl<$Res> implements $EditProjectCopyWith<$Res> {
  _$EditProjectCopyWithImpl(this._self, this._then);

  final EditProject _self;
  final $Res Function(EditProject) _then;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? projectEntityDto = null,
  }) {
    return _then(EditProject(
      null == projectEntityDto
          ? _self.projectEntityDto
          : projectEntityDto // ignore: cast_nullable_to_non_nullable
              as ProjectEntityDto,
    ));
  }

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<$Res> get projectEntityDto {
    return $ProjectEntityDtoCopyWith<$Res>(_self.projectEntityDto, (value) {
      return _then(_self.copyWith(projectEntityDto: value));
    });
  }
}

/// @nodoc

class SaveMessageCommit implements FormMessageCommitEvent {
  const SaveMessageCommit(this.resultIaMessageCommit, this.projectId);

  final ResultIaMessageCommit resultIaMessageCommit;
  final String projectId;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SaveMessageCommitCopyWith<SaveMessageCommit> get copyWith =>
      _$SaveMessageCommitCopyWithImpl<SaveMessageCommit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SaveMessageCommit &&
            (identical(other.resultIaMessageCommit, resultIaMessageCommit) ||
                other.resultIaMessageCommit == resultIaMessageCommit) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, resultIaMessageCommit, projectId);

  @override
  String toString() {
    return 'FormMessageCommitEvent.saveMessageCommit(resultIaMessageCommit: $resultIaMessageCommit, projectId: $projectId)';
  }
}

/// @nodoc
abstract mixin class $SaveMessageCommitCopyWith<$Res>
    implements $FormMessageCommitEventCopyWith<$Res> {
  factory $SaveMessageCommitCopyWith(
          SaveMessageCommit value, $Res Function(SaveMessageCommit) _then) =
      _$SaveMessageCommitCopyWithImpl;
  @useResult
  $Res call({ResultIaMessageCommit resultIaMessageCommit, String projectId});

  $ResultIaMessageCommitCopyWith<$Res> get resultIaMessageCommit;
}

/// @nodoc
class _$SaveMessageCommitCopyWithImpl<$Res>
    implements $SaveMessageCommitCopyWith<$Res> {
  _$SaveMessageCommitCopyWithImpl(this._self, this._then);

  final SaveMessageCommit _self;
  final $Res Function(SaveMessageCommit) _then;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? resultIaMessageCommit = null,
    Object? projectId = null,
  }) {
    return _then(SaveMessageCommit(
      null == resultIaMessageCommit
          ? _self.resultIaMessageCommit
          : resultIaMessageCommit // ignore: cast_nullable_to_non_nullable
              as ResultIaMessageCommit,
      null == projectId
          ? _self.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultIaMessageCommitCopyWith<$Res> get resultIaMessageCommit {
    return $ResultIaMessageCommitCopyWith<$Res>(_self.resultIaMessageCommit,
        (value) {
      return _then(_self.copyWith(resultIaMessageCommit: value));
    });
  }
}

/// @nodoc

class LoadGitDiff implements FormMessageCommitEvent {
  const LoadGitDiff(this.projectPath);

  final String projectPath;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadGitDiffCopyWith<LoadGitDiff> get copyWith =>
      _$LoadGitDiffCopyWithImpl<LoadGitDiff>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadGitDiff &&
            (identical(other.projectPath, projectPath) ||
                other.projectPath == projectPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectPath);

  @override
  String toString() {
    return 'FormMessageCommitEvent.loadGitDiff(projectPath: $projectPath)';
  }
}

/// @nodoc
abstract mixin class $LoadGitDiffCopyWith<$Res>
    implements $FormMessageCommitEventCopyWith<$Res> {
  factory $LoadGitDiffCopyWith(
          LoadGitDiff value, $Res Function(LoadGitDiff) _then) =
      _$LoadGitDiffCopyWithImpl;
  @useResult
  $Res call({String projectPath});
}

/// @nodoc
class _$LoadGitDiffCopyWithImpl<$Res> implements $LoadGitDiffCopyWith<$Res> {
  _$LoadGitDiffCopyWithImpl(this._self, this._then);

  final LoadGitDiff _self;
  final $Res Function(LoadGitDiff) _then;

  /// Create a copy of FormMessageCommitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? projectPath = null,
  }) {
    return _then(LoadGitDiff(
      null == projectPath
          ? _self.projectPath
          : projectPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$FormMessageCommitState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormMessageCommitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitState()';
  }
}

/// @nodoc
class $FormMessageCommitStateCopyWith<$Res> {
  $FormMessageCommitStateCopyWith(
      FormMessageCommitState _, $Res Function(FormMessageCommitState) __);
}

/// @nodoc

class FormInitial extends FormMessageCommitState {
  const FormInitial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitState.initial()';
  }
}

/// @nodoc

class FormLoading extends FormMessageCommitState {
  const FormLoading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitState.loading()';
  }
}

/// @nodoc

class FormSuccessGenerate extends FormMessageCommitState {
  const FormSuccessGenerate(this.result, this.formGenerator) : super._();

  final ResultIaMessageCommit result;
  final FormGeneratorCommit formGenerator;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormSuccessGenerateCopyWith<FormSuccessGenerate> get copyWith =>
      _$FormSuccessGenerateCopyWithImpl<FormSuccessGenerate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormSuccessGenerate &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.formGenerator, formGenerator) ||
                other.formGenerator == formGenerator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, formGenerator);

  @override
  String toString() {
    return 'FormMessageCommitState.successGenerate(result: $result, formGenerator: $formGenerator)';
  }
}

/// @nodoc
abstract mixin class $FormSuccessGenerateCopyWith<$Res>
    implements $FormMessageCommitStateCopyWith<$Res> {
  factory $FormSuccessGenerateCopyWith(
          FormSuccessGenerate value, $Res Function(FormSuccessGenerate) _then) =
      _$FormSuccessGenerateCopyWithImpl;
  @useResult
  $Res call({ResultIaMessageCommit result, FormGeneratorCommit formGenerator});

  $ResultIaMessageCommitCopyWith<$Res> get result;
  $FormGeneratorCommitCopyWith<$Res> get formGenerator;
}

/// @nodoc
class _$FormSuccessGenerateCopyWithImpl<$Res>
    implements $FormSuccessGenerateCopyWith<$Res> {
  _$FormSuccessGenerateCopyWithImpl(this._self, this._then);

  final FormSuccessGenerate _self;
  final $Res Function(FormSuccessGenerate) _then;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
    Object? formGenerator = null,
  }) {
    return _then(FormSuccessGenerate(
      null == result
          ? _self.result
          : result // ignore: cast_nullable_to_non_nullable
              as ResultIaMessageCommit,
      null == formGenerator
          ? _self.formGenerator
          : formGenerator // ignore: cast_nullable_to_non_nullable
              as FormGeneratorCommit,
    ));
  }

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultIaMessageCommitCopyWith<$Res> get result {
    return $ResultIaMessageCommitCopyWith<$Res>(_self.result, (value) {
      return _then(_self.copyWith(result: value));
    });
  }

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormGeneratorCommitCopyWith<$Res> get formGenerator {
    return $FormGeneratorCommitCopyWith<$Res>(_self.formGenerator, (value) {
      return _then(_self.copyWith(formGenerator: value));
    });
  }
}

/// @nodoc

class FormSuccessEdit extends FormMessageCommitState {
  const FormSuccessEdit() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormSuccessEdit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitState.successEdit()';
  }
}

/// @nodoc

class FormSuccessLoadGitDiff extends FormMessageCommitState {
  const FormSuccessLoadGitDiff(this.diff) : super._();

  final GitDiffEntity diff;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormSuccessLoadGitDiffCopyWith<FormSuccessLoadGitDiff> get copyWith =>
      _$FormSuccessLoadGitDiffCopyWithImpl<FormSuccessLoadGitDiff>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormSuccessLoadGitDiff &&
            (identical(other.diff, diff) || other.diff == diff));
  }

  @override
  int get hashCode => Object.hash(runtimeType, diff);

  @override
  String toString() {
    return 'FormMessageCommitState.successLoadGitDiff(diff: $diff)';
  }
}

/// @nodoc
abstract mixin class $FormSuccessLoadGitDiffCopyWith<$Res>
    implements $FormMessageCommitStateCopyWith<$Res> {
  factory $FormSuccessLoadGitDiffCopyWith(FormSuccessLoadGitDiff value,
          $Res Function(FormSuccessLoadGitDiff) _then) =
      _$FormSuccessLoadGitDiffCopyWithImpl;
  @useResult
  $Res call({GitDiffEntity diff});
}

/// @nodoc
class _$FormSuccessLoadGitDiffCopyWithImpl<$Res>
    implements $FormSuccessLoadGitDiffCopyWith<$Res> {
  _$FormSuccessLoadGitDiffCopyWithImpl(this._self, this._then);

  final FormSuccessLoadGitDiff _self;
  final $Res Function(FormSuccessLoadGitDiff) _then;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? diff = null,
  }) {
    return _then(FormSuccessLoadGitDiff(
      null == diff
          ? _self.diff
          : diff // ignore: cast_nullable_to_non_nullable
              as GitDiffEntity,
    ));
  }
}

/// @nodoc

class FormSuccessSave extends FormMessageCommitState {
  const FormSuccessSave() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormSuccessSave);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormMessageCommitState.successSave()';
  }
}

/// @nodoc

class FormError extends FormMessageCommitState {
  const FormError(this.failure) : super._();

  final CommitGeneratorFailure failure;

  /// Create a copy of FormMessageCommitState
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
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'FormMessageCommitState.error(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $FormErrorCopyWith<$Res>
    implements $FormMessageCommitStateCopyWith<$Res> {
  factory $FormErrorCopyWith(FormError value, $Res Function(FormError) _then) =
      _$FormErrorCopyWithImpl;
  @useResult
  $Res call({CommitGeneratorFailure failure});
}

/// @nodoc
class _$FormErrorCopyWithImpl<$Res> implements $FormErrorCopyWith<$Res> {
  _$FormErrorCopyWithImpl(this._self, this._then);

  final FormError _self;
  final $Res Function(FormError) _then;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(FormError(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CommitGeneratorFailure,
    ));
  }
}

/// @nodoc

class FormErrorLoadGitDiff extends FormMessageCommitState {
  const FormErrorLoadGitDiff(this.failure) : super._();

  final GitDiffFailure failure;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormErrorLoadGitDiffCopyWith<FormErrorLoadGitDiff> get copyWith =>
      _$FormErrorLoadGitDiffCopyWithImpl<FormErrorLoadGitDiff>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormErrorLoadGitDiff &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @override
  String toString() {
    return 'FormMessageCommitState.errorLoadGitDiff(failure: $failure)';
  }
}

/// @nodoc
abstract mixin class $FormErrorLoadGitDiffCopyWith<$Res>
    implements $FormMessageCommitStateCopyWith<$Res> {
  factory $FormErrorLoadGitDiffCopyWith(FormErrorLoadGitDiff value,
          $Res Function(FormErrorLoadGitDiff) _then) =
      _$FormErrorLoadGitDiffCopyWithImpl;
  @useResult
  $Res call({GitDiffFailure failure});
}

/// @nodoc
class _$FormErrorLoadGitDiffCopyWithImpl<$Res>
    implements $FormErrorLoadGitDiffCopyWith<$Res> {
  _$FormErrorLoadGitDiffCopyWithImpl(this._self, this._then);

  final FormErrorLoadGitDiff _self;
  final $Res Function(FormErrorLoadGitDiff) _then;

  /// Create a copy of FormMessageCommitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? failure = null,
  }) {
    return _then(FormErrorLoadGitDiff(
      null == failure
          ? _self.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GitDiffFailure,
    ));
  }
}

// dart format on

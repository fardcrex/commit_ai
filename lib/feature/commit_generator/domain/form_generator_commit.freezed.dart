// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_generator_commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormGeneratorCommit _$FormGeneratorCommitFromJson(Map<String, dynamic> json) {
  return _FormGeneratorCommit.fromJson(json);
}

/// @nodoc
mixin _$FormGeneratorCommit {
  String get projectDescription => throw _privateConstructorUsedError;
  String get changeDescription => throw _privateConstructorUsedError;
  String get gitDiff => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get includeBody => throw _privateConstructorUsedError;
  bool get includeFooter => throw _privateConstructorUsedError;

  /// Serializes this FormGeneratorCommit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormGeneratorCommitCopyWith<FormGeneratorCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormGeneratorCommitCopyWith<$Res> {
  factory $FormGeneratorCommitCopyWith(
          FormGeneratorCommit value, $Res Function(FormGeneratorCommit) then) =
      _$FormGeneratorCommitCopyWithImpl<$Res, FormGeneratorCommit>;
  @useResult
  $Res call(
      {String projectDescription,
      String changeDescription,
      String gitDiff,
      String type,
      bool includeBody,
      bool includeFooter});
}

/// @nodoc
class _$FormGeneratorCommitCopyWithImpl<$Res, $Val extends FormGeneratorCommit>
    implements $FormGeneratorCommitCopyWith<$Res> {
  _$FormGeneratorCommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectDescription = null,
    Object? changeDescription = null,
    Object? gitDiff = null,
    Object? type = null,
    Object? includeBody = null,
    Object? includeFooter = null,
  }) {
    return _then(_value.copyWith(
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      changeDescription: null == changeDescription
          ? _value.changeDescription
          : changeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      gitDiff: null == gitDiff
          ? _value.gitDiff
          : gitDiff // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      includeBody: null == includeBody
          ? _value.includeBody
          : includeBody // ignore: cast_nullable_to_non_nullable
              as bool,
      includeFooter: null == includeFooter
          ? _value.includeFooter
          : includeFooter // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormGeneratorCommitImplCopyWith<$Res>
    implements $FormGeneratorCommitCopyWith<$Res> {
  factory _$$FormGeneratorCommitImplCopyWith(_$FormGeneratorCommitImpl value,
          $Res Function(_$FormGeneratorCommitImpl) then) =
      __$$FormGeneratorCommitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectDescription,
      String changeDescription,
      String gitDiff,
      String type,
      bool includeBody,
      bool includeFooter});
}

/// @nodoc
class __$$FormGeneratorCommitImplCopyWithImpl<$Res>
    extends _$FormGeneratorCommitCopyWithImpl<$Res, _$FormGeneratorCommitImpl>
    implements _$$FormGeneratorCommitImplCopyWith<$Res> {
  __$$FormGeneratorCommitImplCopyWithImpl(_$FormGeneratorCommitImpl _value,
      $Res Function(_$FormGeneratorCommitImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectDescription = null,
    Object? changeDescription = null,
    Object? gitDiff = null,
    Object? type = null,
    Object? includeBody = null,
    Object? includeFooter = null,
  }) {
    return _then(_$FormGeneratorCommitImpl(
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      changeDescription: null == changeDescription
          ? _value.changeDescription
          : changeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      gitDiff: null == gitDiff
          ? _value.gitDiff
          : gitDiff // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      includeBody: null == includeBody
          ? _value.includeBody
          : includeBody // ignore: cast_nullable_to_non_nullable
              as bool,
      includeFooter: null == includeFooter
          ? _value.includeFooter
          : includeFooter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormGeneratorCommitImpl implements _FormGeneratorCommit {
  const _$FormGeneratorCommitImpl(
      {required this.projectDescription,
      required this.changeDescription,
      required this.gitDiff,
      required this.type,
      required this.includeBody,
      required this.includeFooter});

  factory _$FormGeneratorCommitImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormGeneratorCommitImplFromJson(json);

  @override
  final String projectDescription;
  @override
  final String changeDescription;
  @override
  final String gitDiff;
  @override
  final String type;
  @override
  final bool includeBody;
  @override
  final bool includeFooter;

  @override
  String toString() {
    return 'FormGeneratorCommit(projectDescription: $projectDescription, changeDescription: $changeDescription, gitDiff: $gitDiff, type: $type, includeBody: $includeBody, includeFooter: $includeFooter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormGeneratorCommitImpl &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.changeDescription, changeDescription) ||
                other.changeDescription == changeDescription) &&
            (identical(other.gitDiff, gitDiff) || other.gitDiff == gitDiff) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.includeBody, includeBody) ||
                other.includeBody == includeBody) &&
            (identical(other.includeFooter, includeFooter) ||
                other.includeFooter == includeFooter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, projectDescription,
      changeDescription, gitDiff, type, includeBody, includeFooter);

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormGeneratorCommitImplCopyWith<_$FormGeneratorCommitImpl> get copyWith =>
      __$$FormGeneratorCommitImplCopyWithImpl<_$FormGeneratorCommitImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormGeneratorCommitImplToJson(
      this,
    );
  }
}

abstract class _FormGeneratorCommit implements FormGeneratorCommit {
  const factory _FormGeneratorCommit(
      {required final String projectDescription,
      required final String changeDescription,
      required final String gitDiff,
      required final String type,
      required final bool includeBody,
      required final bool includeFooter}) = _$FormGeneratorCommitImpl;

  factory _FormGeneratorCommit.fromJson(Map<String, dynamic> json) =
      _$FormGeneratorCommitImpl.fromJson;

  @override
  String get projectDescription;
  @override
  String get changeDescription;
  @override
  String get gitDiff;
  @override
  String get type;
  @override
  bool get includeBody;
  @override
  bool get includeFooter;

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormGeneratorCommitImplCopyWith<_$FormGeneratorCommitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultIaMessageCommit _$ResultIaMessageCommitFromJson(
    Map<String, dynamic> json) {
  return _ResultIaMessageCommit.fromJson(json);
}

/// @nodoc
mixin _$ResultIaMessageCommit {
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get footer => throw _privateConstructorUsedError;

  /// Serializes this ResultIaMessageCommit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultIaMessageCommitCopyWith<ResultIaMessageCommit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultIaMessageCommitCopyWith<$Res> {
  factory $ResultIaMessageCommitCopyWith(ResultIaMessageCommit value,
          $Res Function(ResultIaMessageCommit) then) =
      _$ResultIaMessageCommitCopyWithImpl<$Res, ResultIaMessageCommit>;
  @useResult
  $Res call(
      {String description,
      String type,
      String scope,
      String body,
      String footer});
}

/// @nodoc
class _$ResultIaMessageCommitCopyWithImpl<$Res,
        $Val extends ResultIaMessageCommit>
    implements $ResultIaMessageCommitCopyWith<$Res> {
  _$ResultIaMessageCommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? scope = null,
    Object? body = null,
    Object? footer = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      footer: null == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultIaMessageCommitImplCopyWith<$Res>
    implements $ResultIaMessageCommitCopyWith<$Res> {
  factory _$$ResultIaMessageCommitImplCopyWith(
          _$ResultIaMessageCommitImpl value,
          $Res Function(_$ResultIaMessageCommitImpl) then) =
      __$$ResultIaMessageCommitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String type,
      String scope,
      String body,
      String footer});
}

/// @nodoc
class __$$ResultIaMessageCommitImplCopyWithImpl<$Res>
    extends _$ResultIaMessageCommitCopyWithImpl<$Res,
        _$ResultIaMessageCommitImpl>
    implements _$$ResultIaMessageCommitImplCopyWith<$Res> {
  __$$ResultIaMessageCommitImplCopyWithImpl(_$ResultIaMessageCommitImpl _value,
      $Res Function(_$ResultIaMessageCommitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? scope = null,
    Object? body = null,
    Object? footer = null,
  }) {
    return _then(_$ResultIaMessageCommitImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      footer: null == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultIaMessageCommitImpl implements _ResultIaMessageCommit {
  const _$ResultIaMessageCommitImpl(
      {required this.description,
      required this.type,
      this.scope = '',
      this.body = '',
      this.footer = ''});

  factory _$ResultIaMessageCommitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultIaMessageCommitImplFromJson(json);

  @override
  final String description;
  @override
  final String type;
  @override
  @JsonKey()
  final String scope;
  @override
  @JsonKey()
  final String body;
  @override
  @JsonKey()
  final String footer;

  @override
  String toString() {
    return 'ResultIaMessageCommit(description: $description, type: $type, scope: $scope, body: $body, footer: $footer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultIaMessageCommitImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.footer, footer) || other.footer == footer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, type, scope, body, footer);

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultIaMessageCommitImplCopyWith<_$ResultIaMessageCommitImpl>
      get copyWith => __$$ResultIaMessageCommitImplCopyWithImpl<
          _$ResultIaMessageCommitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultIaMessageCommitImplToJson(
      this,
    );
  }
}

abstract class _ResultIaMessageCommit implements ResultIaMessageCommit {
  const factory _ResultIaMessageCommit(
      {required final String description,
      required final String type,
      final String scope,
      final String body,
      final String footer}) = _$ResultIaMessageCommitImpl;

  factory _ResultIaMessageCommit.fromJson(Map<String, dynamic> json) =
      _$ResultIaMessageCommitImpl.fromJson;

  @override
  String get description;
  @override
  String get type;
  @override
  String get scope;
  @override
  String get body;
  @override
  String get footer;

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultIaMessageCommitImplCopyWith<_$ResultIaMessageCommitImpl>
      get copyWith => throw _privateConstructorUsedError;
}

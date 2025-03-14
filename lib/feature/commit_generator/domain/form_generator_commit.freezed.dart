// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_generator_commit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormGeneratorCommit {
  String get projectDescription;
  String get changeDescription;
  String get gitDiff;
  String get type;
  bool get includeBody;
  bool get includeFooter;

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormGeneratorCommitCopyWith<FormGeneratorCommit> get copyWith =>
      _$FormGeneratorCommitCopyWithImpl<FormGeneratorCommit>(
          this as FormGeneratorCommit, _$identity);

  /// Serializes this FormGeneratorCommit to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormGeneratorCommit &&
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

  @override
  String toString() {
    return 'FormGeneratorCommit(projectDescription: $projectDescription, changeDescription: $changeDescription, gitDiff: $gitDiff, type: $type, includeBody: $includeBody, includeFooter: $includeFooter)';
  }
}

/// @nodoc
abstract mixin class $FormGeneratorCommitCopyWith<$Res> {
  factory $FormGeneratorCommitCopyWith(
          FormGeneratorCommit value, $Res Function(FormGeneratorCommit) _then) =
      _$FormGeneratorCommitCopyWithImpl;
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
class _$FormGeneratorCommitCopyWithImpl<$Res>
    implements $FormGeneratorCommitCopyWith<$Res> {
  _$FormGeneratorCommitCopyWithImpl(this._self, this._then);

  final FormGeneratorCommit _self;
  final $Res Function(FormGeneratorCommit) _then;

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
    return _then(_self.copyWith(
      projectDescription: null == projectDescription
          ? _self.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      changeDescription: null == changeDescription
          ? _self.changeDescription
          : changeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      gitDiff: null == gitDiff
          ? _self.gitDiff
          : gitDiff // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      includeBody: null == includeBody
          ? _self.includeBody
          : includeBody // ignore: cast_nullable_to_non_nullable
              as bool,
      includeFooter: null == includeFooter
          ? _self.includeFooter
          : includeFooter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _FormGeneratorCommit implements FormGeneratorCommit {
  const _FormGeneratorCommit(
      {required this.projectDescription,
      required this.changeDescription,
      required this.gitDiff,
      required this.type,
      required this.includeBody,
      required this.includeFooter});
  factory _FormGeneratorCommit.fromJson(Map<String, dynamic> json) =>
      _$FormGeneratorCommitFromJson(json);

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

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormGeneratorCommitCopyWith<_FormGeneratorCommit> get copyWith =>
      __$FormGeneratorCommitCopyWithImpl<_FormGeneratorCommit>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FormGeneratorCommitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormGeneratorCommit &&
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

  @override
  String toString() {
    return 'FormGeneratorCommit(projectDescription: $projectDescription, changeDescription: $changeDescription, gitDiff: $gitDiff, type: $type, includeBody: $includeBody, includeFooter: $includeFooter)';
  }
}

/// @nodoc
abstract mixin class _$FormGeneratorCommitCopyWith<$Res>
    implements $FormGeneratorCommitCopyWith<$Res> {
  factory _$FormGeneratorCommitCopyWith(_FormGeneratorCommit value,
          $Res Function(_FormGeneratorCommit) _then) =
      __$FormGeneratorCommitCopyWithImpl;
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
class __$FormGeneratorCommitCopyWithImpl<$Res>
    implements _$FormGeneratorCommitCopyWith<$Res> {
  __$FormGeneratorCommitCopyWithImpl(this._self, this._then);

  final _FormGeneratorCommit _self;
  final $Res Function(_FormGeneratorCommit) _then;

  /// Create a copy of FormGeneratorCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? projectDescription = null,
    Object? changeDescription = null,
    Object? gitDiff = null,
    Object? type = null,
    Object? includeBody = null,
    Object? includeFooter = null,
  }) {
    return _then(_FormGeneratorCommit(
      projectDescription: null == projectDescription
          ? _self.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      changeDescription: null == changeDescription
          ? _self.changeDescription
          : changeDescription // ignore: cast_nullable_to_non_nullable
              as String,
      gitDiff: null == gitDiff
          ? _self.gitDiff
          : gitDiff // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      includeBody: null == includeBody
          ? _self.includeBody
          : includeBody // ignore: cast_nullable_to_non_nullable
              as bool,
      includeFooter: null == includeFooter
          ? _self.includeFooter
          : includeFooter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$ResultIaMessageCommit {
  String get description;
  String get type;
  String get scope;
  String get body;
  String get footer;

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultIaMessageCommitCopyWith<ResultIaMessageCommit> get copyWith =>
      _$ResultIaMessageCommitCopyWithImpl<ResultIaMessageCommit>(
          this as ResultIaMessageCommit, _$identity);

  /// Serializes this ResultIaMessageCommit to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultIaMessageCommit &&
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

  @override
  String toString() {
    return 'ResultIaMessageCommit(description: $description, type: $type, scope: $scope, body: $body, footer: $footer)';
  }
}

/// @nodoc
abstract mixin class $ResultIaMessageCommitCopyWith<$Res> {
  factory $ResultIaMessageCommitCopyWith(ResultIaMessageCommit value,
          $Res Function(ResultIaMessageCommit) _then) =
      _$ResultIaMessageCommitCopyWithImpl;
  @useResult
  $Res call(
      {String description,
      String type,
      String scope,
      String body,
      String footer});
}

/// @nodoc
class _$ResultIaMessageCommitCopyWithImpl<$Res>
    implements $ResultIaMessageCommitCopyWith<$Res> {
  _$ResultIaMessageCommitCopyWithImpl(this._self, this._then);

  final ResultIaMessageCommit _self;
  final $Res Function(ResultIaMessageCommit) _then;

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
    return _then(_self.copyWith(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      footer: null == footer
          ? _self.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ResultIaMessageCommit implements ResultIaMessageCommit {
  const _ResultIaMessageCommit(
      {required this.description,
      required this.type,
      this.scope = '',
      this.body = '',
      this.footer = ''});
  factory _ResultIaMessageCommit.fromJson(Map<String, dynamic> json) =>
      _$ResultIaMessageCommitFromJson(json);

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

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultIaMessageCommitCopyWith<_ResultIaMessageCommit> get copyWith =>
      __$ResultIaMessageCommitCopyWithImpl<_ResultIaMessageCommit>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResultIaMessageCommitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultIaMessageCommit &&
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

  @override
  String toString() {
    return 'ResultIaMessageCommit(description: $description, type: $type, scope: $scope, body: $body, footer: $footer)';
  }
}

/// @nodoc
abstract mixin class _$ResultIaMessageCommitCopyWith<$Res>
    implements $ResultIaMessageCommitCopyWith<$Res> {
  factory _$ResultIaMessageCommitCopyWith(_ResultIaMessageCommit value,
          $Res Function(_ResultIaMessageCommit) _then) =
      __$ResultIaMessageCommitCopyWithImpl;
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
class __$ResultIaMessageCommitCopyWithImpl<$Res>
    implements _$ResultIaMessageCommitCopyWith<$Res> {
  __$ResultIaMessageCommitCopyWithImpl(this._self, this._then);

  final _ResultIaMessageCommit _self;
  final $Res Function(_ResultIaMessageCommit) _then;

  /// Create a copy of ResultIaMessageCommit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
    Object? type = null,
    Object? scope = null,
    Object? body = null,
    Object? footer = null,
  }) {
    return _then(_ResultIaMessageCommit(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      scope: null == scope
          ? _self.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      footer: null == footer
          ? _self.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

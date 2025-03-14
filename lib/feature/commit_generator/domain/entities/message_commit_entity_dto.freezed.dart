// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_commit_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageCommitEntityDto {
  String get idProject;
  String get type;
  String get description;
  int get created;
  String get scope;
  String get body;
  String get footer;
  String get id;

  /// Create a copy of MessageCommitEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MessageCommitEntityDtoCopyWith<MessageCommitEntityDto> get copyWith =>
      _$MessageCommitEntityDtoCopyWithImpl<MessageCommitEntityDto>(
          this as MessageCommitEntityDto, _$identity);

  /// Serializes this MessageCommitEntityDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageCommitEntityDto &&
            (identical(other.idProject, idProject) ||
                other.idProject == idProject) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProject, type, description,
      created, scope, body, footer, id);

  @override
  String toString() {
    return 'MessageCommitEntityDto(idProject: $idProject, type: $type, description: $description, created: $created, scope: $scope, body: $body, footer: $footer, id: $id)';
  }
}

/// @nodoc
abstract mixin class $MessageCommitEntityDtoCopyWith<$Res> {
  factory $MessageCommitEntityDtoCopyWith(MessageCommitEntityDto value,
          $Res Function(MessageCommitEntityDto) _then) =
      _$MessageCommitEntityDtoCopyWithImpl;
  @useResult
  $Res call(
      {String idProject,
      String type,
      String description,
      int created,
      String scope,
      String body,
      String footer,
      String id});
}

/// @nodoc
class _$MessageCommitEntityDtoCopyWithImpl<$Res>
    implements $MessageCommitEntityDtoCopyWith<$Res> {
  _$MessageCommitEntityDtoCopyWithImpl(this._self, this._then);

  final MessageCommitEntityDto _self;
  final $Res Function(MessageCommitEntityDto) _then;

  /// Create a copy of MessageCommitEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProject = null,
    Object? type = null,
    Object? description = null,
    Object? created = null,
    Object? scope = null,
    Object? body = null,
    Object? footer = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      idProject: null == idProject
          ? _self.idProject
          : idProject // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
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
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MessageCommitEntityDto implements MessageCommitEntityDto {
  _MessageCommitEntityDto(
      {required this.idProject,
      required this.type,
      required this.description,
      required this.created,
      required this.scope,
      required this.body,
      required this.footer,
      this.id = ''});
  factory _MessageCommitEntityDto.fromJson(Map<String, dynamic> json) =>
      _$MessageCommitEntityDtoFromJson(json);

  @override
  final String idProject;
  @override
  final String type;
  @override
  final String description;
  @override
  final int created;
  @override
  final String scope;
  @override
  final String body;
  @override
  final String footer;
  @override
  @JsonKey()
  final String id;

  /// Create a copy of MessageCommitEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MessageCommitEntityDtoCopyWith<_MessageCommitEntityDto> get copyWith =>
      __$MessageCommitEntityDtoCopyWithImpl<_MessageCommitEntityDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MessageCommitEntityDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageCommitEntityDto &&
            (identical(other.idProject, idProject) ||
                other.idProject == idProject) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.scope, scope) || other.scope == scope) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProject, type, description,
      created, scope, body, footer, id);

  @override
  String toString() {
    return 'MessageCommitEntityDto(idProject: $idProject, type: $type, description: $description, created: $created, scope: $scope, body: $body, footer: $footer, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$MessageCommitEntityDtoCopyWith<$Res>
    implements $MessageCommitEntityDtoCopyWith<$Res> {
  factory _$MessageCommitEntityDtoCopyWith(_MessageCommitEntityDto value,
          $Res Function(_MessageCommitEntityDto) _then) =
      __$MessageCommitEntityDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String idProject,
      String type,
      String description,
      int created,
      String scope,
      String body,
      String footer,
      String id});
}

/// @nodoc
class __$MessageCommitEntityDtoCopyWithImpl<$Res>
    implements _$MessageCommitEntityDtoCopyWith<$Res> {
  __$MessageCommitEntityDtoCopyWithImpl(this._self, this._then);

  final _MessageCommitEntityDto _self;
  final $Res Function(_MessageCommitEntityDto) _then;

  /// Create a copy of MessageCommitEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idProject = null,
    Object? type = null,
    Object? description = null,
    Object? created = null,
    Object? scope = null,
    Object? body = null,
    Object? footer = null,
    Object? id = null,
  }) {
    return _then(_MessageCommitEntityDto(
      idProject: null == idProject
          ? _self.idProject
          : idProject // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
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
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

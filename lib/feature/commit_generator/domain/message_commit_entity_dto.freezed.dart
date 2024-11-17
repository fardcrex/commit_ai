// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_commit_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageCommitEntityDto _$MessageCommitEntityDtoFromJson(
    Map<String, dynamic> json) {
  return _MessageCommitEntityDto.fromJson(json);
}

/// @nodoc
mixin _$MessageCommitEntityDto {
  String get idProject => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get scope => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get footer => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCommitEntityDtoCopyWith<MessageCommitEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCommitEntityDtoCopyWith<$Res> {
  factory $MessageCommitEntityDtoCopyWith(MessageCommitEntityDto value,
          $Res Function(MessageCommitEntityDto) then) =
      _$MessageCommitEntityDtoCopyWithImpl<$Res, MessageCommitEntityDto>;
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
class _$MessageCommitEntityDtoCopyWithImpl<$Res,
        $Val extends MessageCommitEntityDto>
    implements $MessageCommitEntityDtoCopyWith<$Res> {
  _$MessageCommitEntityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      idProject: null == idProject
          ? _value.idProject
          : idProject // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCommitEntityDtoImplCopyWith<$Res>
    implements $MessageCommitEntityDtoCopyWith<$Res> {
  factory _$$MessageCommitEntityDtoImplCopyWith(
          _$MessageCommitEntityDtoImpl value,
          $Res Function(_$MessageCommitEntityDtoImpl) then) =
      __$$MessageCommitEntityDtoImplCopyWithImpl<$Res>;
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
class __$$MessageCommitEntityDtoImplCopyWithImpl<$Res>
    extends _$MessageCommitEntityDtoCopyWithImpl<$Res,
        _$MessageCommitEntityDtoImpl>
    implements _$$MessageCommitEntityDtoImplCopyWith<$Res> {
  __$$MessageCommitEntityDtoImplCopyWithImpl(
      _$MessageCommitEntityDtoImpl _value,
      $Res Function(_$MessageCommitEntityDtoImpl) _then)
      : super(_value, _then);

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
    return _then(_$MessageCommitEntityDtoImpl(
      idProject: null == idProject
          ? _value.idProject
          : idProject // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageCommitEntityDtoImpl implements _MessageCommitEntityDto {
  _$MessageCommitEntityDtoImpl(
      {required this.idProject,
      required this.type,
      required this.description,
      required this.created,
      required this.scope,
      required this.body,
      required this.footer,
      this.id = ''});

  factory _$MessageCommitEntityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCommitEntityDtoImplFromJson(json);

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

  @override
  String toString() {
    return 'MessageCommitEntityDto(idProject: $idProject, type: $type, description: $description, created: $created, scope: $scope, body: $body, footer: $footer, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCommitEntityDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idProject, type, description,
      created, scope, body, footer, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCommitEntityDtoImplCopyWith<_$MessageCommitEntityDtoImpl>
      get copyWith => __$$MessageCommitEntityDtoImplCopyWithImpl<
          _$MessageCommitEntityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCommitEntityDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageCommitEntityDto implements MessageCommitEntityDto {
  factory _MessageCommitEntityDto(
      {required final String idProject,
      required final String type,
      required final String description,
      required final int created,
      required final String scope,
      required final String body,
      required final String footer,
      final String id}) = _$MessageCommitEntityDtoImpl;

  factory _MessageCommitEntityDto.fromJson(Map<String, dynamic> json) =
      _$MessageCommitEntityDtoImpl.fromJson;

  @override
  String get idProject;
  @override
  String get type;
  @override
  String get description;
  @override
  int get created;
  @override
  String get scope;
  @override
  String get body;
  @override
  String get footer;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$MessageCommitEntityDtoImplCopyWith<_$MessageCommitEntityDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

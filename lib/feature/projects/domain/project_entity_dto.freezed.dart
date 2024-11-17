// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProjectEntityDto _$ProjectEntityDtoFromJson(Map<String, dynamic> json) {
  return _ProjectEntityDto.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntityDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get commits => throw _privateConstructorUsedError;
  int get lastModified => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityDtoCopyWith<ProjectEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityDtoCopyWith<$Res> {
  factory $ProjectEntityDtoCopyWith(
          ProjectEntityDto value, $Res Function(ProjectEntityDto) then) =
      _$ProjectEntityDtoCopyWithImpl<$Res, ProjectEntityDto>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int commits,
      int lastModified,
      int created});
}

/// @nodoc
class _$ProjectEntityDtoCopyWithImpl<$Res, $Val extends ProjectEntityDto>
    implements $ProjectEntityDtoCopyWith<$Res> {
  _$ProjectEntityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? commits = null,
    Object? lastModified = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commits: null == commits
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as int,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEntityDtoImplCopyWith<$Res>
    implements $ProjectEntityDtoCopyWith<$Res> {
  factory _$$ProjectEntityDtoImplCopyWith(_$ProjectEntityDtoImpl value,
          $Res Function(_$ProjectEntityDtoImpl) then) =
      __$$ProjectEntityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      int commits,
      int lastModified,
      int created});
}

/// @nodoc
class __$$ProjectEntityDtoImplCopyWithImpl<$Res>
    extends _$ProjectEntityDtoCopyWithImpl<$Res, _$ProjectEntityDtoImpl>
    implements _$$ProjectEntityDtoImplCopyWith<$Res> {
  __$$ProjectEntityDtoImplCopyWithImpl(_$ProjectEntityDtoImpl _value,
      $Res Function(_$ProjectEntityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? commits = null,
    Object? lastModified = null,
    Object? created = null,
  }) {
    return _then(_$ProjectEntityDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      commits: null == commits
          ? _value.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as int,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectEntityDtoImpl extends _ProjectEntityDto {
  _$ProjectEntityDtoImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.commits,
      required this.lastModified,
      required this.created})
      : super._();

  factory _$ProjectEntityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectEntityDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int commits;
  @override
  final int lastModified;
  @override
  final int created;

  @override
  String toString() {
    return 'ProjectEntityDto(id: $id, name: $name, description: $description, commits: $commits, lastModified: $lastModified, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.commits, commits) || other.commits == commits) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, commits, lastModified, created);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityDtoImplCopyWith<_$ProjectEntityDtoImpl> get copyWith =>
      __$$ProjectEntityDtoImplCopyWithImpl<_$ProjectEntityDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectEntityDtoImplToJson(
      this,
    );
  }
}

abstract class _ProjectEntityDto extends ProjectEntityDto {
  factory _ProjectEntityDto(
      {required final String id,
      required final String name,
      required final String description,
      required final int commits,
      required final int lastModified,
      required final int created}) = _$ProjectEntityDtoImpl;
  _ProjectEntityDto._() : super._();

  factory _ProjectEntityDto.fromJson(Map<String, dynamic> json) =
      _$ProjectEntityDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get commits;
  @override
  int get lastModified;
  @override
  int get created;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityDtoImplCopyWith<_$ProjectEntityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

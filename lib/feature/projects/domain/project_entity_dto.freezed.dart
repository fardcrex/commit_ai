// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_entity_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectEntityDto {
  String get id;
  String get name;
  String get description;
  String? get path;
  int get commits;
  int get lastModified;
  int get created;
  bool get isFavorite;
  bool get includeBody;
  bool get includeFooter;

  /// Create a copy of ProjectEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectEntityDtoCopyWith<ProjectEntityDto> get copyWith =>
      _$ProjectEntityDtoCopyWithImpl<ProjectEntityDto>(
          this as ProjectEntityDto, _$identity);

  /// Serializes this ProjectEntityDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectEntityDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.commits, commits) || other.commits == commits) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.includeBody, includeBody) ||
                other.includeBody == includeBody) &&
            (identical(other.includeFooter, includeFooter) ||
                other.includeFooter == includeFooter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, path,
      commits, lastModified, created, isFavorite, includeBody, includeFooter);

  @override
  String toString() {
    return 'ProjectEntityDto(id: $id, name: $name, description: $description, path: $path, commits: $commits, lastModified: $lastModified, created: $created, isFavorite: $isFavorite, includeBody: $includeBody, includeFooter: $includeFooter)';
  }
}

/// @nodoc
abstract mixin class $ProjectEntityDtoCopyWith<$Res> {
  factory $ProjectEntityDtoCopyWith(
          ProjectEntityDto value, $Res Function(ProjectEntityDto) _then) =
      _$ProjectEntityDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? path,
      int commits,
      int lastModified,
      int created,
      bool isFavorite,
      bool includeBody,
      bool includeFooter});
}

/// @nodoc
class _$ProjectEntityDtoCopyWithImpl<$Res>
    implements $ProjectEntityDtoCopyWith<$Res> {
  _$ProjectEntityDtoCopyWithImpl(this._self, this._then);

  final ProjectEntityDto _self;
  final $Res Function(ProjectEntityDto) _then;

  /// Create a copy of ProjectEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? path = freezed,
    Object? commits = null,
    Object? lastModified = null,
    Object? created = null,
    Object? isFavorite = null,
    Object? includeBody = null,
    Object? includeFooter = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      commits: null == commits
          ? _self.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as int,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _ProjectEntityDto extends ProjectEntityDto {
  _ProjectEntityDto(
      {required this.id,
      required this.name,
      required this.description,
      required this.path,
      required this.commits,
      required this.lastModified,
      required this.created,
      this.isFavorite = false,
      this.includeBody = false,
      this.includeFooter = false})
      : super._();
  factory _ProjectEntityDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String? path;
  @override
  final int commits;
  @override
  final int lastModified;
  @override
  final int created;
  @override
  @JsonKey()
  final bool isFavorite;
  @override
  @JsonKey()
  final bool includeBody;
  @override
  @JsonKey()
  final bool includeFooter;

  /// Create a copy of ProjectEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectEntityDtoCopyWith<_ProjectEntityDto> get copyWith =>
      __$ProjectEntityDtoCopyWithImpl<_ProjectEntityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProjectEntityDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectEntityDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.commits, commits) || other.commits == commits) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.includeBody, includeBody) ||
                other.includeBody == includeBody) &&
            (identical(other.includeFooter, includeFooter) ||
                other.includeFooter == includeFooter));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, path,
      commits, lastModified, created, isFavorite, includeBody, includeFooter);

  @override
  String toString() {
    return 'ProjectEntityDto(id: $id, name: $name, description: $description, path: $path, commits: $commits, lastModified: $lastModified, created: $created, isFavorite: $isFavorite, includeBody: $includeBody, includeFooter: $includeFooter)';
  }
}

/// @nodoc
abstract mixin class _$ProjectEntityDtoCopyWith<$Res>
    implements $ProjectEntityDtoCopyWith<$Res> {
  factory _$ProjectEntityDtoCopyWith(
          _ProjectEntityDto value, $Res Function(_ProjectEntityDto) _then) =
      __$ProjectEntityDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String? path,
      int commits,
      int lastModified,
      int created,
      bool isFavorite,
      bool includeBody,
      bool includeFooter});
}

/// @nodoc
class __$ProjectEntityDtoCopyWithImpl<$Res>
    implements _$ProjectEntityDtoCopyWith<$Res> {
  __$ProjectEntityDtoCopyWithImpl(this._self, this._then);

  final _ProjectEntityDto _self;
  final $Res Function(_ProjectEntityDto) _then;

  /// Create a copy of ProjectEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? path = freezed,
    Object? commits = null,
    Object? lastModified = null,
    Object? created = null,
    Object? isFavorite = null,
    Object? includeBody = null,
    Object? includeFooter = null,
  }) {
    return _then(_ProjectEntityDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      commits: null == commits
          ? _self.commits
          : commits // ignore: cast_nullable_to_non_nullable
              as int,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
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

// dart format on

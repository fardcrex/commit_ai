// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectEntityDto _$ProjectEntityDtoFromJson(Map<String, dynamic> json) =>
    _ProjectEntityDto(
      name: json['name'] as String,
      description: json['description'] as String,
      path: json['path'] as String?,
      commits: (json['commits'] as num).toInt(),
      created: (json['created'] as num).toInt(),
      id: json['id'] as String? ?? '',
      lastModified: (json['last_modified'] as num?)?.toInt(),
      isFavorite: json['is_favorite'] as bool? ?? false,
      includeBody: json['include_body'] as bool? ?? false,
      includeFooter: json['include_footer'] as bool? ?? false,
    );

Map<String, dynamic> _$ProjectEntityDtoToJson(_ProjectEntityDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'path': instance.path,
      'commits': instance.commits,
      'created': instance.created,
      'last_modified': instance.lastModified,
      'is_favorite': instance.isFavorite,
      'include_body': instance.includeBody,
      'include_footer': instance.includeFooter,
    };

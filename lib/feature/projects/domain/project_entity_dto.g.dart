// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectEntityDto _$ProjectEntityDtoFromJson(Map<String, dynamic> json) =>
    _ProjectEntityDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      path: json['path'] as String?,
      commits: (json['commits'] as num).toInt(),
      lastModified: (json['lastModified'] as num).toInt(),
      created: (json['created'] as num).toInt(),
      isFavorite: json['isFavorite'] as bool? ?? false,
      includeBody: json['includeBody'] as bool? ?? false,
      includeFooter: json['includeFooter'] as bool? ?? false,
    );

Map<String, dynamic> _$ProjectEntityDtoToJson(_ProjectEntityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'path': instance.path,
      'commits': instance.commits,
      'lastModified': instance.lastModified,
      'created': instance.created,
      'isFavorite': instance.isFavorite,
      'includeBody': instance.includeBody,
      'includeFooter': instance.includeFooter,
    };

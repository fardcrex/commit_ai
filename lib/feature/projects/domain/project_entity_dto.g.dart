// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectEntityDtoImpl _$$ProjectEntityDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProjectEntityDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      commits: (json['commits'] as num).toInt(),
      lastModified: (json['lastModified'] as num).toInt(),
      created: (json['created'] as num).toInt(),
    );

Map<String, dynamic> _$$ProjectEntityDtoImplToJson(
        _$ProjectEntityDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'commits': instance.commits,
      'lastModified': instance.lastModified,
      'created': instance.created,
    };

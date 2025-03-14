// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_commit_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MessageCommitEntityDto _$MessageCommitEntityDtoFromJson(
        Map<String, dynamic> json) =>
    _MessageCommitEntityDto(
      idProject: json['idProject'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      created: (json['created'] as num).toInt(),
      scope: json['scope'] as String,
      body: json['body'] as String,
      footer: json['footer'] as String,
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$MessageCommitEntityDtoToJson(
        _MessageCommitEntityDto instance) =>
    <String, dynamic>{
      'idProject': instance.idProject,
      'type': instance.type,
      'description': instance.description,
      'created': instance.created,
      'scope': instance.scope,
      'body': instance.body,
      'footer': instance.footer,
      'id': instance.id,
    };

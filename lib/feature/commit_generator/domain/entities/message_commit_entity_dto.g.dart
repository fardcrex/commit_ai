// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_commit_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageCommitEntityDtoImpl _$$MessageCommitEntityDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageCommitEntityDtoImpl(
      idProject: json['idProject'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      created: (json['created'] as num).toInt(),
      scope: json['scope'] as String,
      body: json['body'] as String,
      footer: json['footer'] as String,
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$MessageCommitEntityDtoImplToJson(
        _$MessageCommitEntityDtoImpl instance) =>
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

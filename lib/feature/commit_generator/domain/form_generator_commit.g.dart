// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_generator_commit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormGeneratorCommitImpl _$$FormGeneratorCommitImplFromJson(
        Map<String, dynamic> json) =>
    _$FormGeneratorCommitImpl(
      projectDescription: json['projectDescription'] as String,
      changeDescription: json['changeDescription'] as String,
      gitDiff: json['gitDiff'] as String,
      type: json['type'] as String,
      includeBody: json['includeBody'] as bool,
      includeFooter: json['includeFooter'] as bool,
    );

Map<String, dynamic> _$$FormGeneratorCommitImplToJson(
        _$FormGeneratorCommitImpl instance) =>
    <String, dynamic>{
      'projectDescription': instance.projectDescription,
      'changeDescription': instance.changeDescription,
      'gitDiff': instance.gitDiff,
      'type': instance.type,
      'includeBody': instance.includeBody,
      'includeFooter': instance.includeFooter,
    };

_$ResultIaMessageCommitImpl _$$ResultIaMessageCommitImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultIaMessageCommitImpl(
      description: json['description'] as String,
      type: json['type'] as String,
      scope: json['scope'] as String? ?? '',
      body: json['body'] as String? ?? '',
      footer: json['footer'] as String? ?? '',
    );

Map<String, dynamic> _$$ResultIaMessageCommitImplToJson(
        _$ResultIaMessageCommitImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'type': instance.type,
      'scope': instance.scope,
      'body': instance.body,
      'footer': instance.footer,
    };

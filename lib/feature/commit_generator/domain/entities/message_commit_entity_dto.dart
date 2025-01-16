import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_commit_entity_dto.freezed.dart';
part 'message_commit_entity_dto.g.dart';

@freezed
class MessageCommitEntityDto with _$MessageCommitEntityDto {
  static const String createdKey = 'created';
  static const String idKey = 'id';
  static const String idProjectKey = 'idProject';
  factory MessageCommitEntityDto({
    required String idProject,
    required String type,
    required String description,
    required int created,
    required String scope,
    required String body,
    required String footer,
    @Default('') String id,
  }) = _MessageCommitEntityDto;

  factory MessageCommitEntityDto.fromJson(Map<String, dynamic> json) =>
      _$MessageCommitEntityDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity_dto.freezed.dart';
part 'project_entity_dto.g.dart';

@freezed
class ProjectEntityDto with _$ProjectEntityDto {
  static const lastModifiedKey = 'lastModified';
  static const commitsKey = 'commits';

  factory ProjectEntityDto({
    required String id,
    required String name,
    required String description,
    required String? path,
    required int commits,
    required int lastModified,
    required int created,
  }) = _ProjectEntityDto;

  factory ProjectEntityDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityDtoFromJson(json);

  const ProjectEntityDto._();

  DateTime get lastModifiedDateTime =>
      DateTime.fromMillisecondsSinceEpoch(lastModified);

  DateTime get createdDateTime => DateTime.fromMillisecondsSinceEpoch(created);

  bool get notHasModifications => lastModified == created;
}

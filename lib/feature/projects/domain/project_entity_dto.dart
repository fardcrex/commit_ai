import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_entity_dto.freezed.dart';
part 'project_entity_dto.g.dart';

@freezed
sealed class ProjectEntityDto with _$ProjectEntityDto {
  static const lastModifiedKey = 'lastModified';
  static const commitsKey = 'commits';

  factory ProjectEntityDto({
    required String id,
    required String name,
    required String description,
    required String? path,
    required int commits,
    required int created,
    @JsonKey(name: 'last_modified') int? lastModified,
    @JsonKey(name: 'is_favorite') @Default(false) bool isFavorite,
    @JsonKey(name: 'include_body') @Default(false) bool includeBody,
    @JsonKey(name: 'include_footer') @Default(false) bool includeFooter,
  }) = _ProjectEntityDto;

  factory ProjectEntityDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityDtoFromJson(json);

  const ProjectEntityDto._();

  DateTime get lastModifiedDateTime =>
      DateTime.fromMillisecondsSinceEpoch(lastModified ?? created);

  DateTime get createdDateTime => DateTime.fromMillisecondsSinceEpoch(created);

  bool get notHasModifications => lastModified == created;
}

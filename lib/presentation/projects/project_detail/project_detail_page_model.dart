import 'package:commit_ai/feature/commit_generator/domain/message_commit_entity_dto.dart';

class MessageCommitModel {
  final String title;
  final String body;
  final String footer;
  final String tag;
  final String timeDescription;

  MessageCommitModel({
    required this.title,
    required this.body,
    required this.tag,
    required this.timeDescription,
    required this.footer,
  });
}

extension MessageCommitEntityDtoX on MessageCommitEntityDto {
  MessageCommitModel toModel() {
    final scopeText = scope.isEmpty ? '' : '($scope)';
    return MessageCommitModel(
      title: description,
      body: body,
      tag: '$type $scopeText',
      timeDescription: DateTime.fromMillisecondsSinceEpoch(created).toString(),
      footer: footer,
    );
  }
}

class ProjectDetailPageModel {
  final String title;
  final String description;

  ProjectDetailPageModel({
    required this.title,
    required this.description,
  });
}

class MessageCommitModel {
  final String title;
  final String description;
  final String footer;
  final String tag;

  MessageCommitModel({
    required this.title,
    required this.description,
    required this.tag,
    required this.footer,
  });
}

final mockList = List.generate(
  10,
  (index) => MessageCommitModel(
    title: 'Commit $index',
    description: 'Description of commit $index' * 4,
    tag: 'Tag $index',
    footer: 'Footer of commit $index',
  ),
);

import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:flutter/widgets.dart';
import 'package:timeago/timeago.dart' as timeago;

class ProjectModel {
  ProjectModel({
    required this.name,
    required this.timeDescription,
    required this.decription,
    this.commits = 0,
  });
  final String name;

  final String timeDescription;
  final int commits;
  final String decription;
}

extension ProjectModelX on ProjectEntityDto {
  ProjectModel toModel(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    final timeDescription =
        notHasModifications ? 'Creado: ' : 'Última modificación: ';

    return ProjectModel(
      name: name,
      timeDescription: timeDescription +
          timeago.format(lastModifiedDateTime, locale: locale),
      commits: commits,
      decription: description,
    );
  }
}

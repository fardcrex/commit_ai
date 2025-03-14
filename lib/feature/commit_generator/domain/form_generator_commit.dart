import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_generator_commit.freezed.dart';
part 'form_generator_commit.g.dart';

@freezed
sealed class FormGeneratorCommit with _$FormGeneratorCommit {
  const factory FormGeneratorCommit({
    required String projectDescription,
    required String changeDescription,
    required String gitDiff,
    required String type,
    required bool includeBody,
    required bool includeFooter,
  }) = _FormGeneratorCommit;

  factory FormGeneratorCommit.fromJson(Map<String, dynamic> json) =>
      _$FormGeneratorCommitFromJson(json);
}

@freezed
sealed class ResultIaMessageCommit with _$ResultIaMessageCommit {
  const factory ResultIaMessageCommit({
    required String description,
    required String type,
    @Default('') String scope,
    @Default('') String body,
    @Default('') String footer,
  }) = _ResultIaMessageCommit;

  factory ResultIaMessageCommit.fromJson(Map<String, dynamic> json) =>
      _$ResultIaMessageCommitFromJson(json);

  factory ResultIaMessageCommit.example() => const ResultIaMessageCommit(
      description: 'Initialize project with example commit',
      type: 'feat',
      scope: 'project-setup',
      body: '''
Example commit format:

- `type`: Type of change, e.g., 'feat' for feature.
- `scope`: Area of change, e.g., 'project-setup'.
- `description`: Brief summary.
- `body`: Optional details.

Follow this format for consistency.
  ''',
      footer: '''
No breaking changes.

- `Closes #issue_number` links issues.
- `BREAKING CHANGE:` for incompatible updates.
  ''');
}

import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/domain/message_commit_entity_dto.dart';
import 'package:commit_ai/feature/share/interface_date_time.dart';

class SaveMessageCommitUseCase {
  final IMessageCommitRepository _commitRepository;

  final RespondGetDateTime _respondGetDateTime;

  const SaveMessageCommitUseCase(
      this._commitRepository, this._respondGetDateTime);

  Future<ResultCommitGeneratorUnit> execute(
    ResultIaMessageCommit resultIaMessageCommit,
    String idProject,
  ) async {
    final message = MessageCommitEntityDto(
      body: resultIaMessageCommit.body,
      created: _respondGetDateTime().millisecondsSinceEpoch,
      idProject: idProject,
      description: resultIaMessageCommit.description,
      footer: resultIaMessageCommit.footer,
      scope: resultIaMessageCommit.scope,
      type: resultIaMessageCommit.type,
    );

    return _commitRepository.saveCommit(message);
  }
}

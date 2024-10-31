import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_generate_message_commit_repository.dart';
import 'package:fpdart/fpdart.dart';

class GeminiGenerateMessageCommitRepository
    implements IGenerateMessageCommitRepository {
  @override
  Future<ResultGenerateMessageCommit> generateMessageCommit(
      FormGeneratorCommit formGeneratorCommit) async {
    return Right(ResultIaMessageCommit(
      body: formGeneratorCommit.gitDiff,
      description: formGeneratorCommit.changeDescription,
      footer: 'Footer example',
      type: formGeneratorCommit.type,
    ));
  }
}

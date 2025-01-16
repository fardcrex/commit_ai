import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_generate_message_commit_repository.dart';

class GenerateMessageCommitUseCase {
  final IGenerateMessageCommitRepository _generateMessageCommitRepository;

  const GenerateMessageCommitUseCase(this._generateMessageCommitRepository);

  Future<ResultGenerateMessageCommit> execute(
    FormGeneratorCommit formGeneratorCommit,
  ) {
    return _generateMessageCommitRepository
        .generateMessageCommit(formGeneratorCommit);
  }
}

import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_message_commit_repository.dart';

class DeleteMessageCommitUseCase {
  final IMessageCommitRepository _commitRepository;

  const DeleteMessageCommitUseCase(this._commitRepository);

  Future<ResultCommitGeneratorUnit> execute(String id) async {
    return _commitRepository.deleteCommit(id);
  }
}

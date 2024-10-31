import 'package:commit_ai/feature/commit_generator/domain/interface_message_commit_repository.dart';

class GetHistoryCommitUseCase {
  final IMessageCommitRepository _repository;

  const GetHistoryCommitUseCase(this._repository);

  Stream<ResultHistoryCommitsGenerated> execute(int limit, String idProject) {
    return _repository.getHistoryCommit(limit, idProject);
  }
}

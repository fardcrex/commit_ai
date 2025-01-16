import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/message_commit_entity_dto.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IMessageCommitRepository {
  Stream<ResultHistoryCommitsGenerated> getHistoryCommit(
      int limit, String idProject);

  Future<ResultCommitGeneratorUnit> saveCommit(MessageCommitEntityDto message);

  Future<ResultCommitGeneratorUnit> deleteCommit(String id);
}

typedef ResultHistoryCommitsGenerated
    = Either<CommitGeneratorFailure, List<MessageCommitEntityDto>>;

typedef ResultCommitGeneratorUnit = Either<CommitGeneratorFailure, Unit>;

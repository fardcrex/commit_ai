import 'package:commit_ai/core/injection/sembast_injection.dart';
import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/domain/message_commit_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:fpdart/fpdart.dart';

class SembastMessageCommitRepository implements IMessageCommitRepository {
  final SembastDB _instance;

  SembastMessageCommitRepository(this._instance);

  @override
  Future<ResultCommitGeneratorUnit> deleteCommit(String id) {
    return _instance.commitStore
        .record(id)
        .delete(_instance.db)
        .then((_) => right(unit));
  }

  @override
  Stream<ResultHistoryCommitsGenerated> getHistoryCommit(
    int limit,
    String idProject,
  ) {
    final finder = Finder(
      sortOrders: [SortOrder(MessageCommitEntityDto.createdKey, false)],
      limit: limit,
      filter: Filter.equals(MessageCommitEntityDto.idProjectKey, idProject),
    );
    return _instance.commitStore
        .query(finder: finder)
        .onSnapshots(_instance.db)
        .map((records) {
      return right(records
          .map((record) => MessageCommitEntityDto.fromJson(record.value)
              .copyWith(id: record.key))
          .toList());
    });
  }

  @override
  Future<ResultCommitGeneratorUnit> saveCommit(
      MessageCommitEntityDto message) async {
    try {
      await _instance.db.transaction((txn) async {
        await _instance.commitStore.add(txn, message.toJson());

        final project =
            await _instance.projectStore.record(message.idProject).get(txn);

        if (project != null) {
          final commitsCount = (project['commits'] ?? 0) as int;
          final body = {
            ProjectEntityDto.commitsKey: commitsCount + 1,
            ProjectEntityDto.lastModifiedKey: message.created,
          };
          await _instance.projectStore
              .record(message.idProject)
              .put(txn, body, merge: true);
        }
      });

      return right(unit);
    } catch (e) {
      return left(CommitGeneratorFailure(e.toString()));
    }
  }
}

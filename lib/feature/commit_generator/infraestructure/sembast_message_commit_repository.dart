import 'dart:math';

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
  Future<ResultCommitGeneratorUnit> deleteCommit(String id) async {
    try {
      final result = await _instance.db.transaction((txn) async {
        final commit = await _instance.commitStore.record(id).get(txn);

        if (commit == null) return false;

        final idProject = MessageCommitEntityDto.fromJson(commit).idProject;

        final project = await _instance.projectStore.record(idProject).get(txn);

        if (project == null) return false;

        final commitsCount = ProjectEntityDto.fromJson(project).commits;

        final body = {ProjectEntityDto.commitsKey: max(commitsCount - 1, 0)};

        await _instance.projectStore
            .record(idProject)
            .put(txn, body, merge: true);

        await _instance.commitStore.record(id).delete(txn);

        return true;
      });

      return result ? right(unit) : left(CommitGeneratorFailure('Not found'));
    } catch (e) {
      return left(CommitGeneratorFailure(e.toString()));
    }
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
        .map((records) => records
            .map((record) => MessageCommitEntityDto.fromJson(record.value)
                .copyWith(id: record.key))
            .toList())
        .map(right);
  }

  @override
  Future<ResultCommitGeneratorUnit> saveCommit(
      MessageCommitEntityDto message) async {
    try {
      final res = await _instance.db.transaction((txn) async {
        await _instance.commitStore.add(txn, message.toJson());

        final project =
            await _instance.projectStore.record(message.idProject).get(txn);
        if (project == null) return false;

        final commitsCount = ProjectEntityDto.fromJson(project).commits;

        final body = {
          ProjectEntityDto.commitsKey: commitsCount + 1,
          ProjectEntityDto.lastModifiedKey: message.created,
        };
        await _instance.projectStore
            .record(message.idProject)
            .put(txn, body, merge: true);

        return true;
      });

      return res ? right(unit) : left(CommitGeneratorFailure('Not found'));
    } catch (e) {
      return left(CommitGeneratorFailure(e.toString()));
    }
  }
}

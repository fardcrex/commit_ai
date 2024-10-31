import 'package:commit_ai/core/injection/sembast_injection.dart';
import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:fpdart/fpdart.dart';

class SembastProjectRepository implements IProjectRepository {
  final SembastDB _instance;

  SembastProjectRepository(this._instance);

  static const ID_PROJECT_KEY = 'id_project';

  @override
  Future<Either<ProjectFailure, Unit>> createProject({
    required String title,
    required String description,
  }) async {
    final created = DateTime.now().millisecondsSinceEpoch;

    final project = ProjectEntityDto(
      id: '',
      name: title,
      description: description,
      commits: 0,
      created: created,
      lastModified: created,
    );

    await _instance.projectStore.add(
      _instance.db,
      project.toJson(),
    );
    return right(unit);
  }

  @override
  Future<Either<ProjectFailure, Unit>> deleteProject(String id) async {
    await _instance.projectStore.record(id).delete(_instance.db);
    return right(unit);
  }

  @override
  Stream<Either<ProjectFailure, List<ProjectEntityDto>>> getProjects(
      int limit) {
    final finder = Finder(
      sortOrders: [SortOrder(ProjectEntityDto.lastModifiedKey, false)],
      limit: limit,
    );

    return _instance.projectStore
        .query(finder: finder)
        .onSnapshots(_instance.db)
        .map((records) {
      return right(records
          .map((record) =>
              ProjectEntityDto.fromJson(record.value).copyWith(id: record.key))
          .toList());
    });
  }

  @override
  Future<Either<ProjectFailure, Unit>> updateProject(
      ProjectEntityDto project) async {
    await _instance.projectStore.record(project.id).put(
          _instance.db,
          project.toJson(),
        );

    return right(unit);
  }
}

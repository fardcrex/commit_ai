import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class IProjectRepository {
  Stream<Either<ProjectFailure, List<ProjectEntityDto>>> getProjects(int limit);

  Stream<Either<ProjectFailure, ProjectEntityDto>> getProject(String id);

  Future<Either<ProjectFailure, String>> createProject({
    required String title,
    required String description,
  });

  Future<Either<ProjectFailure, Unit>> updateProject(ProjectEntityDto project);
  Future<Either<ProjectFailure, Unit>> deleteProject(String id);
}

typedef ResponseGetProjects
    = Stream<Either<ProjectFailure, List<ProjectEntityDto>>>;

typedef ResponseGetProject = Stream<Either<ProjectFailure, ProjectEntityDto>>;

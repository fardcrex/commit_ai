import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseProjectRepository implements IProjectRepository {
  final Supabase supabase;

  SupabaseProjectRepository(this.supabase);

  final String tableName = 'projects';

  @override
  Future<Either<ProjectFailure, String>> createProject(
      {required String title,
      required String description,
      required String? path}) async {
    try {
      final created = DateTime.now().millisecondsSinceEpoch;

      final project = ProjectEntityDto(
        id: created.toString(),
        name: title,
        description: description,
        commits: 0,
        created: created,
        lastModified: created,
        path: path,
      ).toJson();

      await supabase.client.from(tableName).insert(project);

      return right(created.toString());
    } catch (e) {
      return left(ProjectFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> deleteProject(String id) async {
    try {
      await supabase.client.from(tableName).delete().eq('id', id);

      /*   if (response.isEmpty) {
        return left(ProjectFailure.notFound());
      }
 */
      return right(unit);
    } catch (e) {
      return left(ProjectFailure.serverError(e.toString()));
    }
  }

  @override
  Stream<Either<ProjectFailure, ProjectEntityDto>> getProject(
      String id) async* {
    try {
      final stream = supabase.client
          .from(tableName)
          .stream(primaryKey: ['id']).eq('id', id);

      await for (final data in stream) {
        if (data.isEmpty) {
          yield left(ProjectFailure.notFound());
        } else {
          yield right(ProjectEntityDto.fromJson(data.first));
        }
      }
    } catch (e) {
      yield left(ProjectFailure.serverError(e.toString()));
    }
  }

  @override
  Stream<Either<ProjectFailure, List<ProjectEntityDto>>> getProjects(
      int limit) async* {
    try {
      final stream = supabase.client
          .from(tableName)
          .stream(primaryKey: ['id']).limit(limit);

      await for (final data in stream) {
        final projects = data.map(ProjectEntityDto.fromJson).toList();
        yield right(projects);
      }
    } catch (e) {
      yield left(ProjectFailure.serverError(e.toString()));
    }
  }

  @override
  Future<Either<ProjectFailure, Unit>> updateProject(
      ProjectEntityDto project) async {
    try {
      await supabase.client
          .from(tableName)
          .update(project.toJson())
          .eq('id', project.id);

      return right(unit);
    } catch (e) {
      return left(ProjectFailure.serverError(e.toString()));
    }
  }
}

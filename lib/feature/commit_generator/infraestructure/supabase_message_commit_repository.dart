import 'dart:math';

import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/message_commit_entity_dto.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_message_commit_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseMessageCommitRepository implements IMessageCommitRepository {
  final SupabaseClient supabase;

  SupabaseMessageCommitRepository(this.supabase);

  final String commitsTable = 'commits';
  final String projectsTable = 'projects';

  @override
  Future<ResultCommitGeneratorUnit> deleteCommit(String id) async {
    try {
      // Obtener el commit
      final commitResponse =
          await supabase.from(commitsTable).select().eq('id', id).maybeSingle();

      if (commitResponse == null) {
        return left(CommitGeneratorFailure('Commit not found'));
      }

      final commit = MessageCommitEntityDto.fromJson(commitResponse);
      final idProject = commit.idProject;

      // Obtener el proyecto asociado
      final projectResponse = await supabase
          .from(projectsTable)
          .select()
          .eq('id', idProject)
          .maybeSingle();

      if (projectResponse == null) {
        return left(CommitGeneratorFailure('Project not found'));
      }

      final project = ProjectEntityDto.fromJson(projectResponse);
      final updatedCommits = max(project.commits - 1, 0);

      // Actualizar contador en el proyecto
      await supabase.from(projectsTable).update({
        'commits': updatedCommits,
      }).eq('id', idProject);

      // Eliminar commit
      await supabase.from(commitsTable).delete().eq('id', id);

      return right(unit);
    } catch (e) {
      return left(CommitGeneratorFailure(e.toString()));
    }
  }

  @override
  Stream<ResultHistoryCommitsGenerated> getHistoryCommit(
    int limit,
    String idProject,
  ) async* {
    try {
      final stream = supabase
          .from(commitsTable)
          .stream(primaryKey: ['id'])
          .eq('id_project', idProject)
          .order('created')
          .limit(limit);

      await for (final data in stream) {
        final commits = data.map(MessageCommitEntityDto.fromJson).toList();

        yield right(commits);
      }
    } catch (e) {
      yield left(CommitGeneratorFailure(e.toString()));
    }
  }

  @override
  Future<ResultCommitGeneratorUnit> saveCommit(
      MessageCommitEntityDto message) async {
    try {
      final created = DateTime.now().millisecondsSinceEpoch;
      final newMessage = message.copyWith(created: created);

      // Guardar commit
      await supabase.from(commitsTable).insert(newMessage.toJson());

      // Obtener proyecto actual
      final projectResponse = await supabase
          .from(projectsTable)
          .select()
          .eq('id', message.idProject)
          .maybeSingle();

      if (projectResponse == null) {
        return left(CommitGeneratorFailure('Project not found'));
      }

      final project = ProjectEntityDto.fromJson(projectResponse);
      final updatedCommits = project.commits + 1;

      // Actualizar proyecto con nuevo contador y fecha
      await supabase.from(projectsTable).update({
        'commits': updatedCommits,
        'last_modified': created,
      }).eq('id', message.idProject);

      return right(unit);
    } catch (e) {
      return left(CommitGeneratorFailure(e.toString()));
    }
  }
}

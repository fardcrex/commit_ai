import 'dart:io';

import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/git_diff_entity.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_git_diff_repository.dart';
import 'package:fpdart/fpdart.dart';

class ProcessGitDiffRepository implements InterfaceGitDiffRepository {
  @override
  Future<ResultGitDiff> loadGitDiff(String path) async {
    try {
      final result = await Process.run('git', ['diff'], workingDirectory: path);
      if (result.exitCode != 0) {
        return left(GitDiffFailure.notFound());
      }
      final diff = result.stdout.toString();
      return right(GitDiffEntity(diff: diff));
    } catch (e) {
      if (e is ProcessException) {
        if (e.errorCode == 267) {
          return left(GitDiffFailure.notFound());
        }
      }

      return left(GitDiffFailure.unexpected(e.toString()));
    }
  }
}

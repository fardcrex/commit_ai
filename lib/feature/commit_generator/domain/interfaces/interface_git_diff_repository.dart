// ignore_for_file: one_member_abstracts

import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/git_diff_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class InterfaceGitDiffRepository {
  Future<ResultGitDiff> loadGitDiff(String path);
}

typedef ResultGitDiff = Either<GitDiffFailure, GitDiffEntity>;

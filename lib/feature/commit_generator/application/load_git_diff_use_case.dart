import 'package:commit_ai/feature/commit_generator/domain/commit_generator_failure.dart';
import 'package:commit_ai/feature/commit_generator/domain/entities/git_diff_entity.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_git_diff_repository.dart';
import 'package:fpdart/fpdart.dart';

class LoadGitDiffUseCase {
  final InterfaceGitDiffRepository _gitDiffRepository;

  LoadGitDiffUseCase(this._gitDiffRepository);

  Future<Either<GitDiffFailure, GitDiffEntity>> execute(String path) async {
    return _gitDiffRepository.loadGitDiff(path);
  }
}

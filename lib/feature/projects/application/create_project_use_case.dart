import 'package:commit_ai/feature/commit_generator/application/save_message_commit_use_case.dart';
import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:fpdart/fpdart.dart';

class CreateProjectUseCase {
  final IProjectRepository _projectRepository;

  final SaveMessageCommitUseCase _saveMessageCommitUseCase;

  CreateProjectUseCase(this._projectRepository, this._saveMessageCommitUseCase);

  Future<Either<ProjectFailure, Unit>> execute({
    required String title,
    required String description,
    required String? path,
  }) async {
    final res = await _projectRepository.createProject(
      title: title,
      description: description,
      path: path,
    );

    return res.fold(
      left,
      (projectId) async {
        final res = await _saveMessageCommitUseCase.execute(
          ResultIaMessageCommit.example(),
          projectId,
        );
        return res.fold(
          (failure) => left(ProjectFailure.saveCommitError(failure.toString())),
          (_) => right(unit),
        );
      },
    );
  }
}

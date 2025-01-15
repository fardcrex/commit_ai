import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_failure.dart';
import 'package:fpdart/fpdart.dart';

class CreateProjectUseCase {
  final IProjectRepository _projectRepository;

  CreateProjectUseCase(this._projectRepository);

  Future<Either<ProjectFailure, String>> execute({
    required String title,
    required String description,
    required String? path,
  }) async {
    return _projectRepository.createProject(
      title: title,
      description: description,
      path: path,
    );
  }
}

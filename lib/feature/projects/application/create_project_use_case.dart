import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';

class CreateProjectUseCase {
  final IProjectRepository _projectRepository;

  CreateProjectUseCase(this._projectRepository);

  Future<void> execute({
    required String title,
    required String description,
  }) async {
    await _projectRepository.createProject(
      title: title,
      description: description,
    );
  }
}

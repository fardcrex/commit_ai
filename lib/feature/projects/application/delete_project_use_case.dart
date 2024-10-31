import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';

class DeleteProjectUseCase {
  final IProjectRepository _projectRepository;

  const DeleteProjectUseCase(this._projectRepository);

  Future<void> execute(String projectId) async {
    await _projectRepository.deleteProject(projectId);
  }
}

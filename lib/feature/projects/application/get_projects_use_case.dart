import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';

class GetProjectstUseCase {
  final IProjectRepository _projectRepository;

  GetProjectstUseCase(this._projectRepository);

  ResponseGetProjects execute(int limit) {
    return _projectRepository.getProjects(limit);
  }
}

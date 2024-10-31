import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';

class GetProjectDetailtUseCase {
  final IProjectRepository _projectRepository;

  GetProjectDetailtUseCase(this._projectRepository);

  ResponseGetProject execute(String id) {
    return _projectRepository.getProject(id);
  }
}

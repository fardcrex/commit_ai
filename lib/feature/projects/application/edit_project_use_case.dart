import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/domain/project_entity_dto.dart';
import 'package:commit_ai/feature/share/interface_date_time.dart';

class EditProjectUseCase {
  final IProjectRepository _projectRepository;

  final RespondGetDateTime _respondGetDateTime;

  const EditProjectUseCase(this._projectRepository, this._respondGetDateTime);

  Future<void> execute(ProjectEntityDto project) async {
    final lastModified = _respondGetDateTime().millisecondsSinceEpoch;

    final projectUpdated = project.copyWith(lastModified: lastModified);

    await _projectRepository.updateProject(projectUpdated);
  }
}

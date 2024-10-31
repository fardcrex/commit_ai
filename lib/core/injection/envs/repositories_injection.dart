import 'package:commit_ai/core/injection/sembast_injection.dart';
import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/infraestructure/sembast_project_repository.dart';
import 'package:commit_ai/feature/share/interface_date_time.dart';

abstract class RepositoriesFactory {
  Future<RepositoriesInjection> createRepositoryInjection();

  static Future<RepositoriesInjection> getDevelopment() {
    return DevelopmentRepositoriesFactory().createRepositoryInjection();
  }
}

class RepositoriesInjection {
  final IProjectRepository projectRepository;

  final RespondGetDateTime respondGetDateTime;

  RepositoriesInjection(this.projectRepository, this.respondGetDateTime);
}

class DevelopmentRepositoriesFactory implements RepositoriesFactory {
  @override
  Future<RepositoriesInjection> createRepositoryInjection() async {
    final sembast = await SembastDB.getInstance();
    final projectRepository = SembastProjectRepository(sembast);
    return RepositoriesInjection(
      projectRepository,
      DateTime.now,
    );
  }
}

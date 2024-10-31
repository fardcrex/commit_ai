import 'package:commit_ai/core/injection/sembast_injection.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_generate_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/domain/interface_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/gemini_generate_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/sembast_message_commit_repository.dart';
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

  final IMessageCommitRepository messageCommitRepository;

  final IGenerateMessageCommitRepository generateMessageCommitRepository;

  final RespondGetDateTime respondGetDateTime;

  RepositoriesInjection(
    this.projectRepository,
    this.respondGetDateTime,
    this.messageCommitRepository,
    this.generateMessageCommitRepository,
  );
}

class DevelopmentRepositoriesFactory implements RepositoriesFactory {
  @override
  Future<RepositoriesInjection> createRepositoryInjection() async {
    final sembast = await SembastDB.getInstance();
    final projectRepository = SembastProjectRepository(sembast);
    final messageCommitRepository = SembastMessageCommitRepository(sembast);
    final generateMessageCommitRepository =
        GeminiGenerateMessageCommitRepository();

    return RepositoriesInjection(
      projectRepository,
      DateTime.now,
      messageCommitRepository,
      generateMessageCommitRepository,
    );
  }
}

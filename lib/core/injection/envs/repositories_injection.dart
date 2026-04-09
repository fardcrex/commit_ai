import 'package:commit_ai/core/injection/sembast_injection.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_generate_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_git_diff_repository.dart';
import 'package:commit_ai/feature/commit_generator/domain/interfaces/interface_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/gemini_generate_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/process_git_diff_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/sembast_message_commit_repository.dart';
import 'package:commit_ai/feature/commit_generator/infraestructure/supabase_message_commit_repository.dart';
import 'package:commit_ai/feature/projects/domain/interface_project_repository.dart';
import 'package:commit_ai/feature/projects/infraestructure/sembast_project_repository.dart';
import 'package:commit_ai/feature/projects/infraestructure/supabase_project_repository.dart';
import 'package:commit_ai/feature/share/interface_date_time.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class RepositoriesFactory {
  Future<RepositoriesInjection> createRepositoryInjection();

  static Future<RepositoriesInjection> getDevelopment() {
    return DevelopmentRepositoriesFactory().createRepositoryInjection();
  }

  static Future<RepositoriesInjection> getProduction() {
    return ProductionRepositoriesFactory().createRepositoryInjection();
  }
}

class RepositoriesInjection {
  final IProjectRepository projectRepository;

  final IMessageCommitRepository messageCommitRepository;

  final IGenerateMessageCommitRepository generateMessageCommitRepository;

  final InterfaceGitDiffRepository gitDiffRepository;

  final RespondGetDateTime respondGetDateTime;

  RepositoriesInjection(
    this.projectRepository,
    this.respondGetDateTime,
    this.messageCommitRepository,
    this.generateMessageCommitRepository,
    this.gitDiffRepository,
  );
}

class DevelopmentRepositoriesFactory implements RepositoriesFactory {
  @override
  Future<RepositoriesInjection> createRepositoryInjection() async {
    final sembast = await SembastDB.getInstance();
    final projectRepository = SembastProjectRepository(sembast);
    final messageCommitRepository = SembastMessageCommitRepository(sembast);
    final generateCommitRepository = GeminiGenerateMessageCommitRepository();
    final gitDiffRepository = ProcessGitDiffRepository();

    return RepositoriesInjection(
      projectRepository,
      DateTime.now,
      messageCommitRepository,
      generateCommitRepository,
      gitDiffRepository,
    );
  }
}

class ProductionRepositoriesFactory implements RepositoriesFactory {
  @override
  Future<RepositoriesInjection> createRepositoryInjection() async {
    final supabase = await Supabase.initialize(
      url: 'https://gwjrzhmqxncemzdcjkhe.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imd3anJ6aG1xeG5jZW16ZGNqa2hlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjE5NTU3NDQsImV4cCI6MjA3NzUzMTc0NH0.WeSZIY6vGw8ehjkvV4NNfzPYWGQfLcXY9mX35l8HQMg',
    );

    final projectRepository = SupabaseProjectRepository(supabase);
    final messageCommitRepository =
        SupabaseMessageCommitRepository(supabase.client);
    final generateCommitRepository = GeminiGenerateMessageCommitRepository();
    final gitDiffRepository = ProcessGitDiffRepository();

    return RepositoriesInjection(
      projectRepository,
      DateTime.now,
      messageCommitRepository,
      generateCommitRepository,
      gitDiffRepository,
    );
  }
}

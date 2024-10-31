import 'package:commit_ai/bootstrap.dart';
import 'package:commit_ai/core/injection/envs/repositories_injection.dart';
import 'package:commit_ai/presentation/app/app_provider.dart';

void main() {
  bootstrap(() async {
    final repositoriesInjection = await RepositoriesFactory.getDevelopment();

    return AppProvider(repositoriesInjection: repositoriesInjection);
  });
}

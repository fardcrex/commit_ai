import 'package:commit_ai/bootstrap.dart';
import 'package:commit_ai/core/injection/envs/repositories_injection.dart';
import 'package:commit_ai/firebase_options.dart';
import 'package:commit_ai/presentation/app/app_provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  bootstrap(() async {
    final repositoriesInjection = await RepositoriesFactory.getDevelopment();

    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    return AppProvider(repositoriesInjection: repositoriesInjection);
  });
}

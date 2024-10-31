import 'package:commit_ai/l10n/l10n.dart';
import 'package:commit_ai/presentation/panel/panel_page.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_bloc_page.dart';
import 'package:commit_ai/presentation/projects/projects_list/project_list_bloc_page.dart';
import 'package:commit_ai/presentation/settings_page/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF312E81),
        ),
      ),
      title: 'Commit AI',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => RootLayout(child: child),
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              fadeRoute(child: const ProjectListPage(), state: state),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) => fadeRoute(
            child: const SettingsPage(),
            state: state,
          ),
        ),
        GoRoute(
          path: '/project/:id',
          pageBuilder: (context, state) {
            final projectId = state.pathParameters['id']!;
            return fadeRoute(
              child: ProjectDetailBlocPage(projectId: projectId),
              state: state,
            );
          },
        ),
      ],
    ),
  ],
);

CustomTransitionPage<void> fadeRoute(
    {required GoRouterState state, required Widget child}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    transitionDuration: Duration.zero,
    reverseTransitionDuration: Duration.zero,
    child: child,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
  );
}

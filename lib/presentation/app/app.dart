import 'package:commit_ai/l10n/l10n.dart';
import 'package:commit_ai/presentation/panel/panel_page.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_page_bloc.dart';
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
          builder: (context, state) => const ProjectListPage(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
        GoRoute(
          path: '/project/:id',
          builder: (context, state) {
            final projectId = state.pathParameters['id']!;
            return ProjectDetailPage(projectId: projectId);
          },
        ),
      ],
    ),
  ],
);

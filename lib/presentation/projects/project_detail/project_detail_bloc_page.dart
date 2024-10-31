// Página de detalle del proyecto
import 'package:commit_ai/presentation/projects/project_detail/form_generator/views/form_generator.dart';
import 'package:commit_ai/presentation/projects/project_detail/history_commit/views/history_commit_section.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_page_model.dart';
import 'package:flutter/material.dart';

class ProjectDetailBlocPage extends StatelessWidget {
  const ProjectDetailBlocPage({
    required this.projectId,
    super.key,
  });
  final String projectId;

  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return ColoredBox(
      color: Colors.white,
      child: Column(
        children: [
          //aPPBAR
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Text('Proyecto: $projectId',
                style: TextStyle(
                    fontSize: 24,
                    color: mainColor,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Row(
              children: [
                HistoryCommitSection(commits: mockList),
                const Expanded(
                  flex: 2,
                  child: FormGenerator(
                      /*      detailPageModel: ProjectDetailPageModel(
                      description: 'Descripción del proyecto',
                      title: 'Código de cambios',
                    ),   */
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:commit_ai/presentation/projects/project_detail/history_commit/widgets/message_commit_card.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_page_model.dart';
import 'package:flutter/material.dart';

class HistoryCommitSection extends StatelessWidget {
  final List<MessageCommitModel> commits;
  const HistoryCommitSection({required this.commits, super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Historial de Commits',
              style: TextStyle(
                fontSize: 18,
                color: mainColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: commits.length,
              itemBuilder: (context, index) {
                final commit = commits[index];
                return MessageCommitCard(
                  message: commit,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

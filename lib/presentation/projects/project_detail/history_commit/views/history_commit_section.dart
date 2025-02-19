import 'package:commit_ai/feature/commit_generator/domain/entities/message_commit_entity_dto.dart';
import 'package:commit_ai/presentation/projects/project_detail/bloc/project_detail_bloc_bloc.dart';
import 'package:commit_ai/presentation/projects/project_detail/history_commit/widgets/message_commit_card.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryCommitSection extends StatelessWidget {
  final List<MessageCommitEntityDto> commits;
  final bool showTitle;

  const HistoryCommitSection(
      {required this.commits, required this.showTitle, super.key});

  @override
  Widget build(BuildContext context) {
    final mainColor = Theme.of(context).primaryColor;
    return Column(
      children: [
        if (showTitle)
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
              return MessageCommitCard(
                  key: ValueKey(commits[index].id),
                  message: commits[index].toModel(),
                  onDelete: () {
                    context.read<ProjectDetailBloc>().add(
                          ProjectDetailEvent.deleteMessage(
                            commits[index].id,
                          ),
                        );
                  });
            },
          ),
        ),
      ],
    );
  }
}

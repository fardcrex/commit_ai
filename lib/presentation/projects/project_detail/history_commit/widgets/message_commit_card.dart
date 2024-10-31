import 'package:commit_ai/presentation/projects/project_detail/history_commit/widgets/icon_button_with_tooltip.dart';
import 'package:commit_ai/presentation/projects/project_detail/project_detail_page_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessageCommitCard extends StatefulWidget {
  final MessageCommitModel message;
  final VoidCallback? onDelete;

  const MessageCommitCard({
    required this.message,
    super.key,
    this.onDelete,
  });

  @override
  State<MessageCommitCard> createState() => _MessageCommitCardState();
}

class _MessageCommitCardState extends State<MessageCommitCard> {
  bool isRawMode = false;
  static const Color primaryColor = Color(0xFF312E81);

  void toggleRawMode() {
    setState(() {
      isRawMode = !isRawMode;
    });
  }

  String get rawMessage =>
      'git commit -m "${widget.message.tag}: ${widget.message.title}" -m "${widget.message.description}"';

  Future<void> copyRawMessage() async {
    await Clipboard.setData(ClipboardData(text: rawMessage));
  }

  Future<void> copySummary() async {
    await Clipboard.setData(
        ClipboardData(text: '${widget.message.tag}: ${widget.message.title}'));
  }

  Future<void> copyBody() async {
    await Clipboard.setData(ClipboardData(text: widget.message.description));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8), // mb-4
      constraints: const BoxConstraints(maxWidth: 448), // max-w-md
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: primaryColor.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24), // p-6
        child: isRawMode
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      rawMessage,
                      style: const TextStyle(
                        color: Color(0xFF4ADE80), // text-green-400
                        fontFamily: 'monospace',
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                          onPressed: copyRawMessage,
                          icon: const Icon(
                            Icons.copy,
                            size: 16,
                            color: Color(0xFF4ADE80),
                          ),
                          label: const Text(
                            'Copy Raw',
                            style: TextStyle(
                              color: Color(0xFF4ADE80),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFF4ADE80),
                          ),
                        ),
                        IconButtonWithTooltip(
                          icon: Icons.arrow_back,
                          onPressed: toggleRawMode,
                          color: const Color(0xFF4ADE80),
                          tooltip: 'Salir del modo raw',
                          hoverColor: const Color(0xFF4ADE80).withOpacity(0.2),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Badge/Tag
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          widget.message.tag,
                          style: const TextStyle(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      IconButtonWithTooltip(
                        icon: Icons.code,
                        onPressed: toggleRawMode,
                        color: primaryColor,
                        tooltip: 'Ver raw',
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    widget.message.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.message.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: primaryColor.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButtonWithTooltip(
                        icon: Icons.copy_outlined,
                        onPressed: copySummary,
                        color: primaryColor,
                        tooltip: 'Copiar resumen',
                      ),
                      const SizedBox(width: 8),
                      IconButtonWithTooltip(
                        icon: Icons.copy_outlined,
                        onPressed: copyBody,
                        color: primaryColor,
                        tooltip: 'Copiar cuerpo',
                      ),
                      const SizedBox(width: 8),
                      IconButtonWithTooltip(
                        icon: Icons.delete_outline,
                        onPressed: () => widget.onDelete?.call(),
                        color: Colors.red,
                        tooltip: 'Eliminar',
                        hoverColor: Colors.red.withOpacity(0.1),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}

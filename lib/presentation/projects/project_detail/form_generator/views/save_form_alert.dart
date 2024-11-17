import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:flutter/material.dart';

class SaveFormAlert extends StatelessWidget {
  final ResultIaMessageCommit resultIA;
  final VoidCallback onSave;
  const SaveFormAlert(
      {required this.resultIA, required this.onSave, super.key});

  static const Color primaryColor = Color(0xFF312E81);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: const Text('Mensaje generado'),
      content: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6), // mb-4
        padding: const EdgeInsets.all(24), // p-6
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: primaryColor.withOpacity(0.4),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                    resultIA.type +
                        (resultIA.scope.isEmpty ? ' ' : ' (${resultIA.scope})'),
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              resultIA.description,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: primaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              resultIA.body,
              style: TextStyle(
                fontSize: 14,
                color: primaryColor.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              resultIA.footer,
              style: TextStyle(
                fontSize: 14,
                color: primaryColor.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: onSave,
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}

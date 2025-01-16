import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProjectFormAlert extends StatefulWidget {
  final void Function(String name, String description, String? path) onSendData;

  final String? initialName;

  final String? initialDescription;

  final String? initialPathProject;

  final String formTitle;

  final String formDescription;

  final String mainButtonLabel;

  final bool hasContent;

  const ProjectFormAlert(
      {required this.onSendData,
      required this.formTitle,
      required this.formDescription,
      required this.mainButtonLabel,
      this.initialPathProject,
      this.initialName,
      this.initialDescription,
      this.hasContent = true,
      super.key});

  @override
  State<ProjectFormAlert> createState() => _ProjectFormAlertState();
}

class _ProjectFormAlertState extends State<ProjectFormAlert> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final pathProjectController = TextEditingController();

  bool get isFormValid =>
      (nameController.text.isNotEmpty &&
          descriptionController.text.isNotEmpty) ||
      !widget.hasContent;

  @override
  void initState() {
    nameController.text = widget.initialName ?? '';
    descriptionController.text = widget.initialDescription ?? '';
    pathProjectController.text = widget.initialPathProject ?? '';
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      title: Text(widget.formTitle),
      content: widget.hasContent
          ? Column(
              children: [
                Text(widget.formDescription),
                TextField(
                  controller: nameController,
                  onChanged: (_) => setState(() {}),
                  decoration: const InputDecoration(labelText: 'Nombre'),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: descriptionController,
                  minLines: 2,
                  maxLines: 4,
                  onChanged: (_) => setState(() {}),
                  decoration: const InputDecoration(labelText: 'Descripción'),
                ),
                const SizedBox(height: 20),
                if (!kIsWeb &&
                    !kIsWasm &&
                    (defaultTargetPlatform == TargetPlatform.windows ||
                        defaultTargetPlatform == TargetPlatform.linux ||
                        defaultTargetPlatform == TargetPlatform.macOS))
                  TextField(
                    controller: pathProjectController,
                    minLines: 1,
                    maxLines: 2,
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                        labelText: 'Ruta del proyecto (opcional)'),
                  ),
              ],
            )
          : null,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: isFormValid
              ? () => widget.onSendData(
                    nameController.text,
                    descriptionController.text,
                    pathProjectController.text.isNotEmpty
                        ? pathProjectController.text
                        : null,
                  )
              : null,
          child: Text(widget.mainButtonLabel),
        ),
      ],
    );
  }
}

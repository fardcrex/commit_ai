import 'package:flutter/material.dart';

class ProjectFormAlert extends StatefulWidget {
  final void Function(String name, String description) onSendData;

  final String? initialName;

  final String? initialDescription;

  final String formTitle;

  final String formDescription;

  final String mainButtonLabel;

  final bool hasContent;

  const ProjectFormAlert(
      {required this.onSendData,
      required this.formTitle,
      required this.formDescription,
      required this.mainButtonLabel,
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

  bool get isFormValid =>
      nameController.text.isNotEmpty && descriptionController.text.isNotEmpty;

  @override
  void initState() {
    nameController.text = widget.initialName ?? '';
    descriptionController.text = widget.initialDescription ?? '';
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
                TextField(
                  controller: descriptionController,
                  onChanged: (_) => setState(() {}),
                  decoration: const InputDecoration(labelText: 'Descripción'),
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
                  nameController.text, descriptionController.text)
              : null,
          child: Text(widget.mainButtonLabel),
        ),
      ],
    );
  }
}

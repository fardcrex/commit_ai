import 'package:flutter/material.dart';

class ProjectFormAlert extends StatefulWidget {
  final void Function(String name, String description) onSendData;

  final String? initialName;

  final String? initialDescription;

  final String formTitle;

  final String formDescription;

  const ProjectFormAlert(
      {required this.onSendData,
      required this.formTitle,
      required this.formDescription,
      this.initialName,
      this.initialDescription,
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
      content: Column(
        children: [
          Text(widget.formDescription),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(labelText: 'Descripción'),
          ),
        ],
      ),
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
          child: const Text('Crear'),
        ),
      ],
    );
  }
}

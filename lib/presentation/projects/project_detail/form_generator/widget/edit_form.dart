import 'package:flutter/material.dart';

class EditForm extends StatefulWidget {
  final String projectDescription;
  final void Function(String description) onDescriptionChanged;

  const EditForm(
      {required this.projectDescription,
      required this.onDescriptionChanged,
      super.key});

  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  bool _isEditingDescription = false;
  late String _projectDescription;
  @override
  void initState() {
    _projectDescription = widget.projectDescription;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Descripción del Proyecto',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
        const SizedBox(height: 8),
        if (_isEditingDescription)
          TextFormField(
            initialValue: widget.projectDescription,
            onChanged: (value) {
              _projectDescription = value;
              setState(() {});
            },
            minLines: 2,
            maxLines: 4,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.indigo[300]!),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.indigo[500]!),
              ),
            ),
          )
        else
          Text(
            widget.projectDescription,
            style: TextStyle(color: Colors.grey[600]),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        const SizedBox(height: 8),
        if (_isEditingDescription)
          Row(
            children: [
              TextButton.icon(
                onPressed: () {
                  setState(() => _isEditingDescription = false);
                },
                icon: Icon(Icons.cancel_outlined, color: Colors.red[600]),
                label: Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.red[600]),
                ),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                style: TextButton.styleFrom(
                  //  iconColor: Colors.indigo[600],
                  textStyle: TextStyle(color: Colors.indigo[600]),
                ),
                onPressed: widget.projectDescription == _projectDescription
                    ? null
                    : () {
                        setState(() => _isEditingDescription = false);

                        widget.onDescriptionChanged(_projectDescription);
                      },
                icon: const Icon(Icons.save),
                label: const Text('Guardar'),
              )
            ],
          )
        else
          TextButton.icon(
            onPressed: () {
              setState(() => _isEditingDescription = true);
            },
            icon: Icon(Icons.edit, color: Colors.indigo[600]),
            label: Text(
              'Editar',
              style: TextStyle(color: Colors.indigo[600]),
            ),
          ),
      ],
    );
  }
}

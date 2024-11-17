import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/bloc/form_message_commit_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormGenerator extends StatefulWidget {
  final String projectDescription;

  final void Function(String) onDescriptionChanged;

  const FormGenerator({
    required this.projectDescription,
    required this.onDescriptionChanged,
    super.key,
  });

  @override
  State<FormGenerator> createState() => _FormGeneratorState();
}

class _FormGeneratorState extends State<FormGenerator> {
  bool isEditingDescription = false;

  String commitType = 'Let AI decide';
  final TextEditingController changeDescriptionController =
      TextEditingController();

  final TextEditingController gitDiffController = TextEditingController();

  String projectDescription = '';
  bool includeBody = false;
  bool includeFooter = false;

  final List<String> commitTypes = [
    'Let AI decide',
    'feat',
    'fix',
    'docs',
    'style',
    'refactor',
    'perf',
    'test',
    'chore',
    'build',
    'ci',
    'revert',
    'merge',
    'hotfix',
    'config',
    'deps',
    'sec',
    'localization'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: const Color(0xFFDDE9FF),
        padding: const EdgeInsets.all(32),
        child: Card(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.indigo[200]!),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Project Description Section
                Text(
                  'Descripción del Proyecto',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
                const SizedBox(height: 8),
                if (isEditingDescription)
                  TextFormField(
                    initialValue: widget.projectDescription,
                    onChanged: (value) {
                      projectDescription = value;
                    },
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
                TextButton.icon(
                  onPressed: () {
                    setState(() {
                      isEditingDescription = !isEditingDescription;
                    });

                    if (!isEditingDescription) {
                      widget.onDescriptionChanged(projectDescription);
                    }
                  },
                  icon: Icon(
                    isEditingDescription ? Icons.save : Icons.edit,
                    color: Colors.indigo[600],
                  ),
                  label: Text(
                    isEditingDescription ? 'Guardar' : 'Editar',
                    style: TextStyle(color: Colors.indigo[600]),
                  ),
                ),
                const SizedBox(height: 16),

                // Tabs Section
                DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Container(
                        // width: 300,
                        decoration: BoxDecoration(
                          color: Colors.indigo[50],
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: TabBar(
                          splashBorderRadius: BorderRadius.circular(80),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: Colors.indigo[600],
                          ),
                          unselectedLabelColor: Colors.indigo[600],
                          labelColor: Colors.white,
                          tabs: [
                            Tab(
                                child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: const Text('Descripción'),
                            )),
                            Tab(
                                child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: const Text('Git Diff'),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextFormField(
                                minLines: 5,
                                controller: changeDescriptionController,
                                maxLines: 12,
                                decoration: InputDecoration(
                                  hintText:
                                      'Describe los cambios que has realizado...',
                                  border: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.indigo[500]!),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: TextFormField(
                                controller: gitDiffController,
                                minLines: 6,
                                maxLines: 12,
                                decoration: InputDecoration(
                                  hintText: 'Pega tu git diff aquí...',
                                  border: const OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.indigo[500]!),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Commit Type Section
                Text(
                  'Tipo de Commit',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
                DropdownButtonFormField<String>(
                  value: commitType,
                  onChanged: (value) {
                    setState(() {
                      commitType = value!;
                    });
                  },
                  items: commitTypes.map((String type) {
                    return DropdownMenuItem<String>(
                      value: type,
                      child: Text(type),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.indigo[300]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.indigo[500]!),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Include Body and Footer Switches
                SwitchListTile(
                  title: const Text('Incluir Cuerpo'),
                  value: includeBody,
                  activeColor: Colors.indigo[600],
                  onChanged: (bool value) {
                    setState(() {
                      includeBody = value;
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('Incluir Pie'),
                  value: includeFooter,
                  activeColor: Colors.indigo[600],
                  onChanged: (bool value) {
                    setState(() {
                      includeFooter = value;
                    });
                  },
                ),

                const Spacer(),

                // Generate Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<FormMessageCommitBloc>().add(
                            GenerateMessageCommit(
                              FormGeneratorCommit(
                                projectDescription: widget.projectDescription,
                                changeDescription:
                                    changeDescriptionController.text,
                                type: commitType,
                                includeBody: includeBody,
                                includeFooter: includeFooter,
                                gitDiff: gitDiffController.text,
                              ),
                            ),
                          );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[600],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Generar Mensaje de Commit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

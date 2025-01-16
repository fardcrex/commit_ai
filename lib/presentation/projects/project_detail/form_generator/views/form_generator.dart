import 'package:commit_ai/feature/commit_generator/domain/form_generator_commit.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/bloc/form_message_commit_bloc.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/widget/edit_form.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/widget/path_info.dart';
import 'package:commit_ai/presentation/projects/project_detail/form_generator/widget/tab_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormGenerator extends StatefulWidget {
  final String projectDescription;

  final bool includeBody;

  final bool includeFooter;

  final String? projectPath;

  final void Function(String) onDescriptionChanged;
  final void Function() onIncludeBodynChanged;
  final void Function() onIncludeFooterChanged;

  const FormGenerator({
    required this.projectDescription,
    required this.onDescriptionChanged,
    required this.projectPath,
    required this.onIncludeBodynChanged,
    required this.onIncludeFooterChanged,
    required this.includeBody,
    required this.includeFooter,
    super.key,
  });

  @override
  State<FormGenerator> createState() => _FormGeneratorState();
}

class _FormGeneratorState extends State<FormGenerator> {
  String commitType = 'Let AI decide';
  final TextEditingController changeDescriptionController =
      TextEditingController();

  final TextEditingController gitDiffController = TextEditingController();

  ModeTab modeTab = ModeTab.description;

  @override
  void initState() {
    super.initState();
    changeDescriptionController.addListener(_onListenerValidateController);
    gitDiffController.addListener(_onListenerValidateController);
  }

  @override
  void dispose() {
    changeDescriptionController.dispose();
    gitDiffController.dispose();
    changeDescriptionController.removeListener(_onListenerValidateController);
    gitDiffController.removeListener(_onListenerValidateController);

    super.dispose();
  }

  void _onListenerValidateController() {
    setState(() {});
  }

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
    return BlocListener<FormMessageCommitBloc, FormMessageCommitState>(
      listener: (context, state) {
        state.whenOrNull(
          successSave: () {
            commitType = commitTypes.first;
            changeDescriptionController.clear();
            gitDiffController.clear();

            setState(() {});
          },
          successLoadGitDiff: (entity) {
            gitDiffController.text = entity.diff;
          },
        );
      },
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
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Project Description Section
                    EditForm(
                      projectDescription: widget.projectDescription,
                      onDescriptionChanged: widget.onDescriptionChanged,
                    ),
                    const SizedBox(height: 8),
                    PathInfo(
                      path: widget.projectPath,
                    ),
                    const SizedBox(height: 16),
                    // Tabs Section   const SizedBox(height: 16),
                    TabForms(
                        loadGitDiff: widget.projectPath == null
                            ? null
                            : () => context.read<FormMessageCommitBloc>().add(
                                  FormMessageCommitEvent.loadGitDiff(
                                      widget.projectPath!),
                                ),
                        modeTab: modeTab,
                        changeDescriptionController:
                            changeDescriptionController,
                        gitDiffController: gitDiffController,
                        onTapTab: (tab) {
                          setState(() => modeTab = tab);
                        }),

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
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: commitType,
                      onChanged: (value) {
                        setState(() => commitType = value!);
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
                      value: widget.includeBody,
                      activeColor: Colors.indigo[600],
                      onChanged: (bool value) {
                        widget.onIncludeBodynChanged();
                      },
                    ),
                    SwitchListTile(
                      title: const Text('Incluir Pie'),
                      value: widget.includeFooter,
                      activeColor: Colors.indigo[600],
                      onChanged: (bool value) {
                        widget.onIncludeFooterChanged();
                      },
                    ),
                  ],
                ),
              ),

              // Generate Button
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                child: BlocSelector<FormMessageCommitBloc,
                    FormMessageCommitState, bool>(
                  selector: (state) {
                    return state.isLoading;
                  },
                  builder: (context, isLoading) {
                    return isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : ElevatedButton(
                            onPressed:
                                isFormValid ? onGenerateMessageCommit : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo[600],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Generar Mensaje de Commit'),
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool get isFormValid =>
      changeDescriptionController.text.isNotEmpty ||
      gitDiffController.text.isNotEmpty;

  void onGenerateMessageCommit() {
    context.read<FormMessageCommitBloc>().add(
          GenerateMessageCommit(
            FormGeneratorCommit(
              projectDescription: widget.projectDescription,
              changeDescription: changeDescriptionController.text,
              type: commitType,
              includeBody: widget.includeBody,
              includeFooter: widget.includeFooter,
              gitDiff: gitDiffController.text,
            ),
          ),
        );
  }
}

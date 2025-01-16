import 'package:flutter/material.dart';

enum ModeTab { description, gitDiff }

class TabForms extends StatelessWidget {
  final ModeTab modeTab;
  final TextEditingController changeDescriptionController;
  final TextEditingController gitDiffController;
  final void Function(ModeTab tab) onTapTab;
  final void Function()? loadGitDiff;
  const TabForms(
      {required this.modeTab,
      required this.onTapTab,
      required this.changeDescriptionController,
      required this.gitDiffController,
      required this.loadGitDiff,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: ModeTab.values
                    .map((tab) => TabForm(
                          isActivated: modeTab == tab,
                          text: switch (tab) {
                            ModeTab.description => 'Descripción',
                            ModeTab.gitDiff => 'Git Diff',
                          },
                          onTap: () => onTapTab(tab),
                        ))
                    .toList(),
              ),
            ),
            if (loadGitDiff != null)
              OutlinedButton.icon(
                onPressed: () {
                  loadGitDiff!();
                  onTapTab(ModeTab.gitDiff);
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: Icon(Icons.file_upload, color: Colors.indigo[600]),
                label: Text(
                  'Cargar diff',
                  style: TextStyle(color: Colors.indigo[600]),
                ),
              )
          ],
        ),
        const SizedBox(height: 4),
        switch (modeTab) {
          ModeTab.description => CustomForm(
              controller: changeDescriptionController,
              minLines: 5,
              maxLines: 8,
              hintText: 'Describe los cambios que has realizado...',
            ),
          ModeTab.gitDiff => Builder(builder: (context) {
              final windowHeight = MediaQuery.of(context).size.height;
              final maxLines = (windowHeight / 60)
                  .round()
                  .clamp(10, double.infinity)
                  .toInt();
              return CustomForm(
                controller: gitDiffController,
                minLines: 5,
                maxLines: maxLines,
                hintText: 'Pega tu git diff aquí...',
              );
            }),
        }
      ],
    );
  }
}

class TabForm extends StatelessWidget {
  final bool isActivated;
  final String text;
  final VoidCallback onTap;
  const TabForm(
      {required this.isActivated,
      required this.text,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: isActivated ? Colors.white : Colors.indigo[50],
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color:
                  Colors.indigo[600]?.withValues(alpha: isActivated ? 1 : 0.5)),
        ),
      ),
    );
  }
}

class CustomForm extends StatelessWidget {
  final TextEditingController controller;
  final int minLines;
  final int maxLines;
  final String hintText;
  const CustomForm(
      {required this.controller,
      required this.minLines,
      required this.maxLines,
      required this.hintText,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w400),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo[500]!),
          ),
        ),
      ),
    );
  }
}

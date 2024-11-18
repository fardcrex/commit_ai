import 'package:flutter/material.dart';

enum ModeTab { description, gitDiff }

class TabForms extends StatelessWidget {
  final ModeTab modeTab;
  final TextEditingController changeDescriptionController;
  final TextEditingController gitDiffController;
  final void Function(ModeTab tab) onTapTab;
  const TabForms(
      {required this.modeTab,
      required this.onTapTab,
      required this.changeDescriptionController,
      required this.gitDiffController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        const SizedBox(height: 4),
        switch (modeTab) {
          ModeTab.description => CustomForm(
              controller: changeDescriptionController,
              minLines: 5,
              maxLines: 12,
              hintText: 'Describe los cambios que has realizado...',
            ),
          ModeTab.gitDiff => CustomForm(
              controller: gitDiffController,
              minLines: 5,
              maxLines: 30,
              hintText: 'Pega tu git diff aquí...',
            ),
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
              color: Colors.indigo[600]?.withOpacity(isActivated ? 1 : 0.5)),
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
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.indigo[500]!),
          ),
        ),
      ),
    );
  }
}

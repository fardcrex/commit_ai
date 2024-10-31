import 'dart:io';

import 'package:flutter/material.dart';
import 'package:git/git.dart'; // Página de configuración

Future<String> ejecutarGitDiff(String ruta) async {
  try {
    final proceso = await Process.run(
      'git',
      ['diff'],
      workingDirectory: ruta,
    );
    if (proceso.exitCode == 0) {
      return proceso.stdout.toString(); // El resultado de `git diff`
    } else {
      return 'Error ejecutando git diff: ${proceso.stderr}';
    }
  } catch (e) {
    return 'Error ejecutando git diff: $e';
  }
}

Future<String> ejecutarGitDiff2(String ruta) async {
  try {
    if (await GitDir.isGitDir(ruta)) {
      final gitDir = await GitDir.fromExisting(ruta);

      final diff = await gitDir.runCommand(['diff']);
      if (diff.exitCode == 0) {
        return diff.stdout.toString();
      } else {
        return 'Error git diff: ${diff.stderr}';
      }
    } else {
      return 'Error git diff: No es un repositorio git';
    }
  } catch (e) {
    return 'Error catch git diff: $e';
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () async {
              code = await ejecutarGitDiff(
                  '/Users/jairconislla/Documents/utp/commit_ai');

              setState(() {});
            },
            child: const Text('Página de Configuración')),
        Text(code),
      ],
    );
  }
}

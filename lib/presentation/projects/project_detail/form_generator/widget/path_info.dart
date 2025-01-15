import 'package:flutter/material.dart';

class PathInfo extends StatelessWidget {
  final String? path;
  const PathInfo({super.key, this.path});

  @override
  Widget build(BuildContext context) {
    if (path == null) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Path:',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.indigo[900],
          ),
        ),
        Text(
          path!,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}

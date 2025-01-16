import 'dart:math';

import 'package:flutter/material.dart';

class SnackBarCustom {
  static void showSuccess(BuildContext context) {
    _showSnackBar(
      context,
      message: 'Acción realizada correctamente',
      backgroundColor: Colors.green,
    );
  }

  static void showError(BuildContext context, String message) {
    _showSnackBar(
      context,
      message: message,
      backgroundColor: Colors.red,
    );
  }

  static void _showSnackBar(
    BuildContext context, {
    required String message,
    required Color backgroundColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        width: max(MediaQuery.of(context).size.width * 0.5, 200),
        behavior: SnackBarBehavior.floating,
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(16),
        backgroundColor: backgroundColor,
        content: Center(child: Text(message)),
      ),
    );
  }
}

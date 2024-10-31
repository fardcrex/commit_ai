import 'package:flutter/material.dart';

class IconButtonWithTooltip extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color color;
  final String tooltip;
  final Color? hoverColor;
  final Color? backgroundColor;

  const IconButtonWithTooltip({
    required this.icon,
    required this.onPressed,
    required this.color,
    required this.tooltip,
    this.hoverColor,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8),
          hoverColor: hoverColor ?? color.withOpacity(0.1),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: backgroundColor != null
                ? BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  )
                : null,
            child: Icon(
              icon,
              size: 16,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}

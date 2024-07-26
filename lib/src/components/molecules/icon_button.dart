import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? color;
  final double? iconSize;
  final double? buttonSize;
  final EdgeInsetsGeometry? padding;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.color,
    this.iconSize,
    this.buttonSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonSize,
      height: buttonSize,
      padding: padding,
      child: IconButton(
        icon: Icon(icon, size: iconSize),
        color: color ?? Theme.of(context).iconTheme.color,
        onPressed: onPressed,
      ),
    );
  }
}

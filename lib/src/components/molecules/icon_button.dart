import 'package:flutter/material.dart';

/// A customizable icon button widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomIconButton(
///   icon: Icons.add,
///   onPressed: () => print('Button pressed'),
///   color: Colors.blue,
///   iconSize: 24.0,
///   buttonSize: 48.0,
///   padding: const EdgeInsets.all(8.0),
/// )
/// ```
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

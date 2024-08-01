import 'package:flutter/material.dart';

/// A customizable icon widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomIcon(
///   icon: Icons.favorite,
///   color: Colors.red,
///   size: 32.0,
///   padding: const EdgeInsets.all(8.0),
/// )
/// ```
class CustomIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final double? size;
  final EdgeInsetsGeometry? padding;

  const CustomIcon({
    super.key,
    required this.icon,
    this.color,
    this.size,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Icon(
        icon,
        color: color ?? Theme.of(context).iconTheme.color,
        size: size ?? Theme.of(context).iconTheme.size,
      ),
    );
  }
}

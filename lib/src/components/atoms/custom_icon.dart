import 'package:flutter/material.dart';

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

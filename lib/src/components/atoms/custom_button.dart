import 'package:flutter/material.dart';

/// A customizable button widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomButton(
///   label: 'Sign In',
///   onPressed: () => print('Sign In tapped'),
///   color: Colors.blue,
///   borderRadius: 16.0,
///   textStyle: TextStyle(
///     color: Colors.white,
///     fontSize: 16.0,
///   )
/// )
/// ```
class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final double? borderRadius;
  final TextStyle? textStyle;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
    this.borderRadius,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: textStyle ??
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}

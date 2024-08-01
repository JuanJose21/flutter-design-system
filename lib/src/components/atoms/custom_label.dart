import 'package:flutter/material.dart';

/// A customizable label widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomLabel(
///   text: 'Hello, World!',
///   style: TextStyle(
///     color: Colors.blue,
///     fontSize: 24.0,
///   ),
///   textAlign: TextAlign.center,
///   maxLines: 2,
///   overflow: TextOverflow.ellipsis,
/// )
/// ```
class CustomLabel extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const CustomLabel({
    super.key,
    required this.text,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ?? Theme.of(context).textTheme.bodyLarge,
      textAlign: textAlign ?? TextAlign.start,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
    );
  }
}

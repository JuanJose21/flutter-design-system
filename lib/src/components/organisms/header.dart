import 'package:flutter/material.dart';

/// A header widget that displays the title of the screen.
///
/// example:
/// ```dart
/// Header(
///   title: 'Title',
///   subtitle: 'Subtitle',
///   leading: IconButton(
///     icon: Icon(Icons.arrow_back),
///     onPressed: () => Navigator.pop(context),
///   ),
///   actions: [
///     IconButton(
///       icon: Icon(Icons.search),
///       onPressed: () => print('Search'),
///     ),
///   ],
/// )
/// ```
class Header extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget>? actions;

  const Header({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodySmall),
          if (subtitle != null)
            Text(subtitle!, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
      actions: actions,
    );
  }
}

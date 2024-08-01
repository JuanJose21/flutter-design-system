import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/src/components/atoms/custom_label.dart';

/// A card widget that displays information in a structured manner.
///
/// example:
/// ```dart
/// InfoCard(
///   title: 'Title',
///   description: 'Description',
///   leadingIcon: Icon(Icons.info),
///   backgroundColor: Colors.blue,
///   padding: const EdgeInsets.all(16.0),
/// )
/// ```
class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget? leadingIcon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    this.leadingIcon,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor ?? Theme.of(context).cardColor,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (leadingIcon != null)
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: leadingIcon!,
              ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomLabel(
                    text: title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 4.0),
                  CustomLabel(
                    text: description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

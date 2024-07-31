import 'package:flutter/material.dart';
import 'package:flutter_design_system/src/components/atoms/custom_label.dart';

class Header extends StatelessWidget {
  final String title;
  final Widget? leadingIcon;
  final List<Widget>? actions;
  final Color? backgroundColor;

  const Header({
    super.key,
    required this.title,
    this.leadingIcon,
    this.actions,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: backgroundColor ?? Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leadingIcon != null) leadingIcon!,
          CustomLabel(
            text: title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: actions ?? [],
          ),
        ],
      ),
    );
  }
}

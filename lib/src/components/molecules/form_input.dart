import 'package:flutter/material.dart';
import 'package:flutter_design_system/src/components/atoms/custom_label.dart';
import 'package:flutter_design_system/src/components/atoms/custom_text_field.dart';

class FormInput extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;
  final String? Function(String?)? validator;

  const FormInput({
    Key? key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLabel(
          text: labelText,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8.0),
        CustomTextField(
          hintText: hintText,
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          prefixIcon: prefixIcon,
          validator: validator,
        ),
      ],
    );
  }
}

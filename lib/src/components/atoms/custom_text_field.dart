import 'package:flutter/material.dart';

/// A customizable text field widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomTextField(
///   labelText: 'Email',
///   hintText: 'Enter your email',
///   controller: emailController,
///   keyboardType: TextInputType.emailAddress,
///   obscureText: false,
///   prefixIcon: Icon(Icons.email),
///   validator: (value) {
///     if (value == null || value.isEmpty) {
///       return 'Please enter your email';
///     }
///     return null;
///   }
/// )
/// ```
class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Icon? prefixIcon;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}

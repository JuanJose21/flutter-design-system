import 'package:flutter/material.dart';
import 'package:flutter_design_system/src/components/atoms/custom_button.dart';
import 'package:flutter_design_system/src/components/atoms/custom_text_field.dart';

/// A form widget that allows users to complete their profile.
///
/// example:
/// ```dart
/// CompleteForm(
///   formKey: _formKey,
///   nameController: _nameController,
///   emailController: _emailController,
///   passwordController: _passwordController,
///   onSubmit: () {
///     print('Form submitted');
///   }
/// )
/// ```
class CompleteForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onSubmit;

  const CompleteForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            labelText: 'Name',
            controller: nameController,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            labelText: 'Email',
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          CustomTextField(
            labelText: 'Password',
            controller: passwordController,
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              if (value.length < 6) {
                return 'Password must be at least 6 characters';
              }
              return null;
            },
          ),
          const SizedBox(height: 24.0),
          Center(
            child: CustomButton(
              label: 'Submit',
              onPressed: () {
                if (formKey.currentState?.validate() ?? false) {
                  onSubmit();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

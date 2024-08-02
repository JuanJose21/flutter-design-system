import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

class AtomsScreen extends StatelessWidget {
  AtomsScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Atoms'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              CustomButton(
                label: 'Custom Button',
                onPressed: () => print('Custom Button Pressed'),
              ),
              const SizedBox(height: 16.0),
              const CustomIcon(icon: Icons.home, color: Colors.white),
              CustomImage(
                imageUrl: 'https://via.placeholder.com/150',
                width: 150.0,
                height: 150.0,
                borderRadius: 16.0,
                fit: BoxFit.cover,
                placeholderColor: Colors.grey.shade300,
              ),
              const SizedBox(height: 16.0),
              const CustomLabel(
                text: 'Hello, World!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24.0,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16.0),
              CustomTextField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  prefixIcon: const Icon(Icons.email),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  })
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';
import 'package:flutter_package_api_fake_store/flutter_package_api_fake_store.dart';

class MoleculesScreen extends StatelessWidget {
  MoleculesScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Molecules'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              CategoryList(
                categories: const [
                  CategoryEnum.electronics,
                  CategoryEnum.jewelery,
                  CategoryEnum.mensClothing,
                ],
                onCategorySelected: (category) =>
                    print('Category selected: $category'),
              ),
              const SizedBox(height: 16.0),
              FormInput(
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
                  }),
              const SizedBox(height: 16.0),
              CustomIconButton(
                icon: Icons.add,
                onPressed: () => print('Button pressed'),
                color: Colors.blue,
                iconSize: 24.0,
                buttonSize: 48.0,
                padding: const EdgeInsets.all(8.0),
              ),
              const SizedBox(height: 16.0),
              const InfoCard(
                title: 'Title',
                description: 'Description',
                leadingIcon: Icon(Icons.info),
                backgroundColor: Colors.blue,
                padding: EdgeInsets.all(16.0),
              ),
              const SizedBox(height: 16.0),
              ProductCard(
                imageUrl: 'https://via.placeholder.com/150',
                title: 'Product Title',
                price: '\$100.00',
                onAddToCart: () {
                  print('Added to cart!');
                },
              )
            ],
          ),
        ));
  }
}

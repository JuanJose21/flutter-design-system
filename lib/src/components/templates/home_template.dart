import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

/// HomeTemplate is a template that shows the home screen.
///
/// example:
/// ```dart
///
/// final products = [
///   {
///     'imageUrl': 'https://via.placeholder.com/150',
///     'name': 'Product 1',
///     'price': '\$29.99'
///   },
///   {
///     'imageUrl': 'https://via.placeholder.com/150',
///     'name': 'Product 2',
///     'price': '\$39.99'
///   },
/// ];
///
/// HomeTemplate(
///   products: products,
///   onProductTap: () => print('Product tapped'),
/// )
/// ```
class HomeTemplate extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final VoidCallback onProductTap;

  const HomeTemplate(
      {super.key, required this.products, required this.onProductTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Search Products',
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ProductList(
                products: products,
                onProductTap: onProductTap,
              ),
            ),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Search Products',
            ),
          ],
        ),
      ),
    );
  }
}

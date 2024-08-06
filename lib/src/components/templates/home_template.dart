import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';
import 'package:flutter_package_api_fake_store/flutter_package_api_fake_store.dart';

/// HomeTemplate is a template that shows the home screen.
///
/// example:
/// ```dart
///
/// final products = [
///   ProductModel(
///     id: 1,
///     title: 'Product 1',
///     price: 29.99,
///     image: 'https://via.placeholder.com/150',
///   ),
/// ];
///
/// HomeTemplate(
///   products: products,
///   onProductTap: () => print('Product tapped'),
/// )
/// ```
class HomeTemplate extends StatelessWidget {
  final List<ProductModel> products;
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

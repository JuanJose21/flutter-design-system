import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

class TemplatesScreen extends StatelessWidget {
  TemplatesScreen({super.key});

  final products = [
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'name': 'Product 1',
      'price': '\$29.99'
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'name': 'Product 2',
      'price': '\$39.99'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Templates'),
        ),
        body: HomeTemplate(
          products: products,
          onProductTap: () => print('Product tapped'),
        ));
  }
}

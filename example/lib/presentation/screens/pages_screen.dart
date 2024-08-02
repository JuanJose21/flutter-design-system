import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

class PagesScreen extends StatelessWidget {
  const PagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pages'),
        ),
        body: ProductDetailPage(
          productName: 'Product 1',
          productDescription: 'This is the description of product 1.',
          imageUrl: 'https://via.placeholder.com/150',
          price: 29.99,
          onProductTap: () => print('Product tapped'),
        ));
  }
}

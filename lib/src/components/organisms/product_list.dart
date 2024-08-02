import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/src/components/molecules/product_card.dart';

/// ProductList is a list of products.
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
/// ]
///
/// example:
/// ```dart
/// ProductList(
///   products: products,
///   onProductTap: () => print('Product tapped'),
/// )
/// ```
class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final VoidCallback onProductTap;

  const ProductList(
      {super.key, required this.products, required this.onProductTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          title: product['name'],
          imageUrl: product['imageUrl'],
          price: product['price'],
          onAddToCart: () => onProductTap,
        );
      },
    );
  }
}

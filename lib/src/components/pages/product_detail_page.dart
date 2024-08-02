import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/src/components/atoms/custom_button.dart';

/// ProductDetailPage is a screen that shows the details of a product.
///
/// example:
/// ```dart
/// ProductDetailPage(
///   productName: 'Product 1',
///   productDescription: 'This is the description of product 1.',
///   imageUrl: 'https://via.placeholder.com/150',
///   price: 29.99,
///   onProductTap: () => print('Product tapped'),
/// )
/// ```
class ProductDetailPage extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String imageUrl;
  final double price;
  final VoidCallback onProductTap;

  const ProductDetailPage({
    super.key,
    required this.productName,
    required this.productDescription,
    required this.imageUrl,
    required this.price,
    required this.onProductTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 16.0),
            Text(
              productName,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8.0),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16.0),
            Text(
              productDescription,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(),
            CustomButton(
              label: 'Add to Cart',
              onPressed: () => onProductTap,
            ),
          ],
        ),
      ),
    );
  }
}

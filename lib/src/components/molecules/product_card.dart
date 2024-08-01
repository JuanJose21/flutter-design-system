import 'package:flutter/material.dart';
import 'package:flutter_design_system/flutter_design_system.dart';

/// A card widget that displays product information in a structured manner.
///
/// example:
/// ```dart
/// ProductCard(
///   imageUrl: 'https://via.placeholder.com/150',
///   title: 'Product Title',
///   price: '\$100.00',
///   onAddToCart: () {
///     print('Added to cart!');
///   },
/// )
/// ```
class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final VoidCallback onAddToCart;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              imageUrl: imageUrl,
              width: double.infinity,
              height: 150.0,
              borderRadius: 12.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Text(
              price,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            CustomButton(
              label: 'Add to Cart',
              onPressed: onAddToCart,
            ),
          ],
        ),
      ),
    );
  }
}

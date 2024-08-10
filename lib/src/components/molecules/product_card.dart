import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

/// A card widget that displays product information in a structured manner.
///
/// example:
/// ```dart
/// ProductCard(
///   imageUrl: 'https://via.placeholder.com/150',
///   title: 'Product title',
///   price: '\$ 100.00',
///   onAddToCart: () {
///     print('Add to cart');
///   },
///   onRemoveToCart: () {
///     print('Remove to cart');
///   },
/// )
/// ```

class ProductCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String labelButton;
  final int quantity;
  final VoidCallback onAddToCart;
  final VoidCallback onRemoveToCart;

  const ProductCard({
    super.key,
    this.labelButton = 'Agregar al carrito',
    this.quantity = 0,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.onAddToCart,
    required this.onRemoveToCart,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  void _incrementQuantity() {
    widget.onAddToCart();
  }

  void _decrementQuantity() {
    widget.onRemoveToCart();
  }

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
              imageUrl: widget.imageUrl,
              width: double.infinity,
              height: 150.0,
              borderRadius: 12.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.price,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            widget.quantity == 0
                ? CustomButton(
                    label: widget.labelButton,
                    onPressed: () {
                      _incrementQuantity();
                    },
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: _decrementQuantity,
                      ),
                      Text(widget.quantity.toString()),
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: _incrementQuantity,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

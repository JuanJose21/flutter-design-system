import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';
import 'package:flutter_package_api_fake_store/flutter_package_api_fake_store.dart';

class TemplatesScreen extends StatelessWidget {
  TemplatesScreen({super.key});

  final List<ProductModel> products = [
    ProductModel(
      title: 'Product 1',
      image: 'https://via.placeholder.com/150',
      price: 29.99,
      description: 'This is the description of product 1.',
      category: CategoryEnum.electronics,
      rating: RatingModel(count: 10, rate: 4.5),
    ),
    ProductModel(
      title: 'Product 2',
      image: 'https://via.placeholder.com/150',
      price: 19.99,
      description: 'This is the description of product 2.',
      category: CategoryEnum.electronics,
      rating: RatingModel(count: 2, rate: 4.9),
    )
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

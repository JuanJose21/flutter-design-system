import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';
import 'package:flutter_package_api_fake_store/flutter_package_api_fake_store.dart';

class OrganismsScreen extends StatelessWidget {
  OrganismsScreen({super.key});

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

  final articles = [
    ArticleModel(
      title: 'Article 1',
      description: 'This is the description of article 1.',
      imageUrl: 'https://via.placeholder.com/150',
      onTap: () => print('Article 1 tapped'),
    ),
    ArticleModel(
      title: 'Article 2',
      description: 'This is the description of article 2.',
      imageUrl: 'https://via.placeholder.com/150',
      onTap: () => print('Article 2 tapped'),
    ),
  ];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Organisms'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              ArticleList(
                articles: articles,
              ),
              const SizedBox(height: 16.0),
              CompleteForm(
                  formKey: _formKey,
                  nameController: _nameController,
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onSubmit: () {
                    print('Form submitted');
                  }),
              const SizedBox(height: 16.0),
              Header(
                title: 'Home',
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () => print('Search pressed'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              ProductList(
                products: products,
                onProductTap: () => print('Product tapped'),
              )
            ],
          ),
        ));
  }
}

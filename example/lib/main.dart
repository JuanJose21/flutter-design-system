import 'package:flutter/material.dart';
import 'package:flutter_design_system/flutter_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final List<Article> articles = [
    Article(
      title: 'Article 1',
      description: 'This is the description of article 1.',
      imageUrl: 'https://via.placeholder.com/150',
      onTap: () => print('Article 1 tapped'),
    ),
    Article(
      title: 'Article 2',
      description: 'This is the description of article 2.',
      imageUrl: 'https://via.placeholder.com/150',
      onTap: () => print('Article 2 tapped'),
    ),
  ];

  final List<Map<String, String>> products = [
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Product 1',
      'price': '\$29.99'
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Product 2',
      'price': '\$39.99'
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Product 3',
      'price': '\$19.99'
    },
    {
      'imageUrl': 'https://via.placeholder.com/150',
      'title': 'Product 4',
      'price': '\$49.99'
    },
  ];

  final List<CategoryModel> categories = [
    CategoryModel(name: 'Electronics', icon: Icons.electrical_services),
    CategoryModel(name: 'Fashion', icon: Icons.checkroom),
    CategoryModel(name: 'Home', icon: Icons.home),
    CategoryModel(name: 'Beauty', icon: Icons.brush),
  ];

  void onCategorySelected(String categoryName) {
    print('Category selected: $categoryName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Flutter Design System'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(
                title: 'Welcome to the App',
                leadingIcon:
                    const CustomIcon(icon: Icons.home, color: Colors.white),
                actions: [
                  CustomIconButton(
                    icon: Icons.settings,
                    onPressed: () => print('Settings pressed'),
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const InfoCard(
                title: 'Info Card Title',
                description: 'This is an info card description.',
                leadingIcon: CustomIcon(icon: Icons.info, color: Colors.blue),
              ),
              const SizedBox(height: 16.0),
              CustomButton(
                label: 'Custom Button',
                onPressed: () => print('Custom Button Pressed'),
              ),
              const SizedBox(height: 16.0),
              FormInput(
                labelText: 'Form Input Label',
                hintText: 'Enter some text',
                controller: nameController,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16.0),
              CompleteForm(
                formKey: formKey,
                nameController: nameController,
                emailController: emailController,
                passwordController: passwordController,
                onSubmit: () {
                  print('Form Submitted');
                },
              ),
              const SizedBox(height: 16.0),
              ArticleList(articles: articles),
              const SizedBox(height: 16.0),
              CustomImage(
                imageUrl: 'https://via.placeholder.com/150',
                width: 150.0,
                height: 150.0,
                borderRadius: 16.0,
                fit: BoxFit.cover,
                placeholderColor: Colors.grey.shade300,
              ),
              const SizedBox(height: 16.0),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.6,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    imageUrl: products[0]['imageUrl']!,
                    title: products[0]['title']!,
                    price: products[0]['price']!,
                    onAddToCart: () =>
                        print('${products[0]['title']} added to cart'),
                  );
                },
              ),
              const SizedBox(height: 16.0),
              CategoryList(
                categories: categories,
                onCategorySelected: onCategorySelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

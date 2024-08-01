import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/flutter_design_system_store.dart';

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

  final List<ArticleModel> articles = [
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

  Widget customDividerWithText(BuildContext context, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16.0),
        const Divider(),
        const SizedBox(height: 16.0),
        Text(
          text,
          style: const TextStyle(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: 8.0),
      ],
    );
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
              customDividerWithText(context, 'Header'),
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
              customDividerWithText(context, 'Info Card'),
              const InfoCard(
                title: 'Info Card Title',
                description: 'This is an info card description.',
                leadingIcon: CustomIcon(icon: Icons.info, color: Colors.blue),
              ),
              customDividerWithText(context, 'Button'),
              CustomButton(
                label: 'Custom Button',
                onPressed: () => print('Custom Button Pressed'),
              ),
              customDividerWithText(context, 'Input'),
              FormInput(
                labelText: 'Form Input Label',
                hintText: 'Enter some text',
                controller: nameController,
                keyboardType: TextInputType.text,
              ),
              customDividerWithText(context, 'Form'),
              CompleteForm(
                formKey: formKey,
                nameController: nameController,
                emailController: emailController,
                passwordController: passwordController,
                onSubmit: () {
                  print('Form Submitted');
                },
              ),
              customDividerWithText(context, 'Articles'),
              ArticleList(articles: articles),
              customDividerWithText(context, 'Image'),
              CustomImage(
                imageUrl: 'https://via.placeholder.com/150',
                width: 150.0,
                height: 150.0,
                borderRadius: 16.0,
                fit: BoxFit.cover,
                placeholderColor: Colors.grey.shade300,
              ),
              customDividerWithText(context, 'Product Card'),
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
                    imageUrl: products[index]['imageUrl']!,
                    title: products[index]['title']!,
                    price: products[index]['price']!,
                    onAddToCart: () =>
                        print('${products[index]['title']} added to cart'),
                  );
                },
              ),
              customDividerWithText(context, 'Categories'),
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

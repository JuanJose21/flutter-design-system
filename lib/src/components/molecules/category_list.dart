import 'package:flutter/material.dart';
import 'package:flutter_design_system/flutter_design_system.dart';

/// A list of categories that can be selected.
///
/// example:
/// ```dart
/// CategoryList(
///   categories: [
///     CategoryModel(name: 'Business', icon: Icons.business),
///     CategoryModel(name: 'Entertainment', icon: Icons.movie),
///     CategoryModel(name: 'General', icon: Icons.public),
///     CategoryModel(name: 'Technology', icon: Icons.computer),
///   ],
///   onCategorySelected: (category) => print('Category selected: $category'),
/// )
/// ```
class CategoryList extends StatelessWidget {
  final List<CategoryModel> categories;
  final ValueChanged<String> onCategorySelected;

  const CategoryList({
    super.key,
    required this.categories,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return GestureDetector(
            onTap: () => onCategorySelected(category.name),
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(category.icon, size: 32.0, color: Colors.white),
                  const SizedBox(height: 8.0),
                  Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

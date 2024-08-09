import 'package:flutter/material.dart';
import 'package:flutter_package_api_fake_store/flutter_package_api_fake_store.dart';

/// A list of categories that can be selected.
///
/// example:
/// ```dart
/// CategoryList(
///   categories: [
///     CategoryEnum.electronics,
///     CategoryEnum.jewelery,
///     CategoryEnum.menClothing,
///   ],
///   onCategorySelected: (category) => print('Category selected: $category'),
/// )
/// ```
class CategoryList extends StatelessWidget {
  final List<CategoryEnum> categories;
  final ValueChanged<CategoryEnum> onCategorySelected;

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
            onTap: () => onCategorySelected(category),
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

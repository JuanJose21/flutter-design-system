import 'package:flutter/material.dart';
import 'package:flutter_design_system/src/components/molecules/info_card.dart';

class Article {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  Article({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });
}

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  const ArticleList({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return GestureDetector(
            onTap: article.onTap,
            child: InfoCard(
              title: article.title,
              description: article.description,
              leadingIcon: Image.network(article.imageUrl),
            ));
      },
    );
  }
}

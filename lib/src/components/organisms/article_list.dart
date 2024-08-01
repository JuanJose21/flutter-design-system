import 'package:flutter/material.dart';
import 'package:flutter_design_system/src/components/molecules/info_card.dart';
import 'package:flutter_design_system/src/models/article_model.dart';

class ArticleList extends StatelessWidget {
  final List<ArticleModel> articles;

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

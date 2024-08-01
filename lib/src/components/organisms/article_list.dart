import 'package:flutter/material.dart';
import 'package:flutter_design_system_store/src/components/molecules/info_card.dart';
import 'package:flutter_design_system_store/src/models/article_model.dart';

/// A article list organism that displays a list of articles.
///
/// example:
/// ```dart
/// final articles = [
///   ArticleModel(
///     title: 'Article 1',
///     description: 'This is the description of article 1.',
///     imageUrl: 'https://via.placeholder.com/150',
///     onTap: () => print('Article 1 tapped'),
///   ),
///   ArticleModel(
///     title: 'Article 2',
///     description: 'This is the description of article 2.',
///     imageUrl: 'https://via.placeholder.com/150',
///     onTap: () => print('Article 2 tapped'),
///   ),
/// ];
///
/// ArticleList(
///   articles: articles,
/// )
/// ```
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

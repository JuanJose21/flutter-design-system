import 'package:flutter/material.dart';

class ArticleModel {
  final String title;
  final String description;
  final String imageUrl;
  final VoidCallback onTap;

  ArticleModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.onTap,
  });
}

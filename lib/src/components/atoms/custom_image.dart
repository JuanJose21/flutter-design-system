import 'package:flutter/material.dart';

/// A customizable image widget that allows for various styling options.
///
/// example:
/// ```dart
/// CustomImage(
///   imageUrl: 'https://via.placeholder.com/150',
///   width: 100.0,
///   height: 100.0,
///   borderRadius: 8.0,
///   fit: BoxFit.cover,
///   placeholderColor: Colors.grey.shade300,
/// )
/// ```
class CustomImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;
  final double borderRadius;
  final BoxFit fit;
  final Color placeholderColor;

  const CustomImage({
    super.key,
    required this.imageUrl,
    this.width = 100.0,
    this.height = 100.0,
    this.borderRadius = 8.0,
    this.fit = BoxFit.cover,
    this.placeholderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
              width: width,
              height: height,
              color: placeholderColor,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              ),
            );
          }
        },
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return Container(
            width: width,
            height: height,
            color: placeholderColor,
            child: const Icon(Icons.broken_image, color: Colors.white),
          );
        },
      ),
    );
  }
}

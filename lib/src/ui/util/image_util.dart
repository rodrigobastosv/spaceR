import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

ImageLoadingBuilder getDefaultImageLoadingBuilder({
  required double height,
}) {
  return (_, child, progress) {
    if (progress == null) {
      return child;
    }
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      child: Shimmer(
        child: Container(
          height: height,
          color: Colors.grey[300],
        ),
      ),
    );
  };
}

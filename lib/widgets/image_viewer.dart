import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../generated/assets.gen.dart';
import 'loading_image_with_percent.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({
    Key? key,
    required this.url,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(8),
    ),
  }) : super(key: key);
  final String url;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        imageUrl: url,
        cacheKey: url,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, text, progress) {
          return LoadingImageWithPercent(
            padding: 10,
            percent: progress.progress ?? 0,
          );
        },
        errorWidget: (context, object, stack) {
          return Assets.images.noImage.image(
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

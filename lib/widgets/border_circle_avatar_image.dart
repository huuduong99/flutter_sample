import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../generated/assets.gen.dart';

/// Avatar được bo tròn với viền bọc bên ngoài
class BorderCircleAvatarImage extends StatelessWidget {
  const BorderCircleAvatarImage(
      {Key? key,
      this.size = 80,
      this.avatar,
      this.name = '',
      this.borderColor = Colors.white,
      this.borderSide = 2,
      this.style = const TextStyle(
          color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 10),
      this.backgroundColor})
      : assert(size > 2, borderSide >= 0 && borderSide < size),
        super(key: key);

  final double size;
  final String? avatar;
  final Color borderColor;
  final double borderSide;
  final String name;
  final TextStyle style;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(borderSide), // Border width
      decoration: BoxDecoration(color: borderColor, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(size / 2 - borderSide), // Image radius
          child: CachedNetworkImage(
            cacheKey: avatar ?? '',
            fit: BoxFit.cover,
            imageUrl: avatar ?? '',
            errorWidget: (context, url, error) {
              return Assets.images.noAvatar.svg();
            },
            placeholder: (context, url) {
              return Assets.images.noAvatar.svg();
            },
          ),
        ),
      ),
    );
  }
}

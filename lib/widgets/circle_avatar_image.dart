import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// Avatar được bo tròn với viền bọc bên ngoài
class CircleAvatarImage extends StatelessWidget {
  const CircleAvatarImage(
      {Key? key,
      this.size = 80,
      this.avatar,
      this.name = '',
      this.borderColor = Colors.white,
      this.style = const TextStyle(
          color: Colors.blue, fontWeight: FontWeight.w600, fontSize: 10),
      this.useOldImageOnUrlChange = false})
      : super(key: key);

  final double size;
  final String? avatar;
  final Color borderColor;
  final String name;
  final TextStyle style;
  final bool useOldImageOnUrlChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: borderColor, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
            size: Size.fromRadius(size / 2), // Image radius
            child: CachedNetworkImage(
              useOldImageOnUrlChange: useOldImageOnUrlChange,
              fit: BoxFit.cover,
              imageUrl: avatar ?? '',
              errorWidget: (context, url, error) {
                return const SizedBox();
              },
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// Một Button tiện dụng với các thuộc tính tùy chỉnh theo ý thích
class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.onPressed,
    this.icon,
    this.backgroundColor = Colors.white,
    this.elevation = 0.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.borderColor = const Color(0xFFEF592E),
    this.borderWidth = 1,
    required this.title,
    this.titleColor,
    this.borderRadius = 999,
    this.titleFontSize = 14,
    this.onLongPressed,
  })  : assert(borderRadius > 0 && titleFontSize > 0 && borderWidth > 0),
        super(key: key);
  final VoidCallback? onPressed;
  final VoidCallback? onLongPressed;
  final Widget? icon;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double elevation;
  final EdgeInsets padding;
  final String title;
  final Color? titleColor;
  final double titleFontSize;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(padding),
        elevation: MaterialStateProperty.all(elevation),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: borderWidth),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)))),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      onPressed: onPressed,
      onLongPress: onLongPressed,
      icon: icon ?? const SizedBox(),
      label: Text(
        title,
        style: TextStyle(color: titleColor, fontSize: titleFontSize),
      ),
    );
  }
}

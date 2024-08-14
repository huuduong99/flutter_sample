import 'package:flutter/material.dart';

/// A utils class convert Color to String and vice versa
class ColorUtils {
  /// Private constructor
  ColorUtils._();

  /// '#ABCDEF' => Color(0xFFABCDEF)
  static Color fromHex(String hexString, [Color? defaultValue]) {
    try {
      final buffer = StringBuffer();
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return defaultValue ?? Colors.transparent;
    }
  }

  /// Color(0xFFABCDEF) => '#ABCDEF'
  static String toHex(Color color) {
    return '#${color.value.toRadixString(16).substring(2)}'.toUpperCase();
  }
}

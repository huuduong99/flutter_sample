import 'package:api_client/src/utils/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// The converter to convert Material color from and to string
class ColorConverter implements JsonConverter<Color, String> {
  ///Constructor
  const ColorConverter();

  /// Get color from string hex color
  @override
  Color fromJson(String json) => ColorUtils.fromHex(json);

  /// Convert to string hex
  @override
  String toJson(Color color) => ColorUtils.toHex(color);
}

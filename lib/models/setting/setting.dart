import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting.freezed.dart';

@Freezed(toJson: false,fromJson: false)
class Setting with _$Setting {
  const factory Setting({
    required String title,
    required String content,
    required VoidCallback onPressed,
  }) = _Setting;
}

import 'package:flutter/material.dart';

import 'package:flutter_sample/generated/assets.gen.dart';
import 'package:flutter_sample/generated/l10n.dart';

extension LocaleStringExtension on String {
  String get localeName => switch (this) {
        'en' => S.current.en,
        'vi' => S.current.vi,
        _ => S.current.vi
      };

  Widget get localeIcon => switch (this) {
        'en' => Assets.icons.ukIcon.image(height: 30, width: 30),
        'vi' => Assets.icons.viIcon.image(height: 30, width: 30),
        _ => Assets.icons.viIcon.image(height: 30, width: 30)
      };

  Color get localeColor => switch (this) {
        'en' => Colors.redAccent,
        'vi' => Colors.blue,
        _ => Colors.blue
      };
}

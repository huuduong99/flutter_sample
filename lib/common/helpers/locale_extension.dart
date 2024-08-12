import 'package:flutter/material.dart';

import 'package:flutter_sample/generated/assets.gen.dart';
import 'package:flutter_sample/generated/l10n.dart';

extension LocaleStringExtension on String {
  String get localeName {
    switch (this) {
      case 'en':
        return S.current.en;
      case 'vi':
        return S.current.vi;
      default:
        return S.current.vi;
    }
  }

  Widget get localeIcon {
    switch (this) {
      case 'en':
        return Assets.icons.ukIcon.image(height: 30, width: 30);
      case 'vi':
        return Assets.icons.viIcon.image(height: 30, width: 30);
      default:
        return Assets.icons.viIcon.image(height: 30, width: 30);
    }
  }

  Color get localeColor {
    switch (this) {
      case 'en':
        return Colors.redAccent;
      case 'vi':
        return Colors.blue;
      default:
        return Colors.blue;
    }
  }
}

import 'package:flutter/material.dart';

import '../../core/app.dart';
import '../../core/logging/logging_wrapper.dart';

/// Dialog for show dialog on bossiness logic class;
class DialogService {
  /// NavigatorKey for Overlay Screen. Using for show dialog, show toast, show snackbar, Navigation on root stack
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static final _logger = getLogger("DialogService");

  Future pushNamed(String routeName, [Object? params]) async {
    _logger.d("navigateTo $routeName with ${params ?? ''}");
    return await App.pushNamed(routeName, params);
  }
}

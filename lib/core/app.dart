import 'package:flutter/material.dart';
import 'logging/logging_wrapper.dart';

class App {
  App._();

  static double width = 720;
  static double height = 0;
  static String? appVersion;
  static bool isAppLogOut = false;

  static final _logger = getLogger("AppNavigator");

  /// NavigatorKey for Overlay Screen. Using for show dialog, show toast, show snackbar, Navigation on root stack
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static bool get isTablet => width > 900;

  static BuildContext? get overlayContext =>
      navigatorKey.currentState?.overlay?.context;

  static Future<dynamic> pushNamed(String routeName, [Object? params]) async {
    _logger.d("navigateTo $routeName with ${params ?? ''}");
    return await navigatorKey.currentState
        ?.pushNamed(routeName, arguments: params);
  }

  static Future<dynamic> pushNamedReplaceTo(String routeName,
      [Object? params]) async {
    _logger.d("navigateAndReplaceTo $routeName with ${params ?? ''}");
    return await navigatorKey.currentState
        ?.pushReplacementNamed(routeName, arguments: params);
  }

  static Future<dynamic> pushNamedAndPopUntil(String routeName,
      [Object? params, String? popRouteName]) async {
    _logger.d("navigateAndPopUntil $popRouteName with ${params ?? ''}");
    return await navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: params);
  }

  static void pop({dynamic result}) async {
    if (navigatorKey.currentState?.canPop() ?? false) {
      navigatorKey.currentState?.pop(result);
      _logger.d('pop to last route');
    } else {
      _logger.d('can"t pop');
    }
  }

  static void popUntilRoute({dynamic result, required String route}) {
    return navigatorKey.currentState!.popUntil(ModalRoute.withName(route));
  }
}

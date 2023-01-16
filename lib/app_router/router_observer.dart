import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:push_notification_fcm/common/logging/logging_wrapper.dart';

class RouterObserver extends AutoRouterObserver {

  final Logger _logger = getLogger('RouterObserver');
  @override
  void didPush(Route route, Route? previousRoute) {
    _logger.d('New route pushed: ${route.settings.name}');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    _logger.d('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    _logger.d('Tab route re-visited: ${route.name}');
  }

}
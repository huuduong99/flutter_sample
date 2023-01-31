import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:push_notification_fcm/app_router/routes.dart';
import 'package:push_notification_fcm/features/application/splash_page.dart';
import 'package:push_notification_fcm/features/booking/booking_page.dart';
import 'package:push_notification_fcm/features/discovery/discovery_page.dart';
import 'package:push_notification_fcm/features/home/home_page.dart';
import 'package:push_notification_fcm/features/media_detail/media_detail_page.dart';
import 'package:push_notification_fcm/features/news_feed/news_feed_page.dart';
import 'package:push_notification_fcm/features/profile/profile_page.dart';

import '../features/login/login_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: Routes.splash,
      page: SplashPage,
    ),
    AutoRoute(
      path: Routes.login,
      page: LoginPage,
    ),
    AutoRoute<String>(
      path: Routes.home,
      page: HomePage,
      children: [
        AutoRoute(
          path: Routes.newsFeed,
          page: NewsFeedPage,
        ),
        AutoRoute(
          path: Routes.discovery,
          page: DiscoveryPage,
        ),
        AutoRoute(
          path: Routes.profile,
          page: ProfilePage,
        ),
      ],
    ),
    AutoRoute(
      path: Routes.mediaDetail,
      page: MediaDetailPage,
    ),
    AutoRoute(
      path: Routes.booking,
      page: BookingPage,
    ),
    RedirectRoute(path: '*', redirectTo: Routes.home),
  ],
)
class AppRouter extends _$AppRouter {}

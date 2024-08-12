import 'package:auto_route/auto_route.dart';
import 'package:flutter_sample/app_router/app_router.gr.dart';
import 'package:flutter_sample/app_router/routes.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: Routes.splash,
          page: SplashRoute.page,
        ),
        AutoRoute(
          path: Routes.login,
          page: LoginRoute.page,
        ),
        AutoRoute(
          path: Routes.home,
          page: HomeRoute.page,
          children: [
            AutoRoute(
              path: Routes.newsFeed,
              page: NewsFeedRoute.page,
            ),
            AutoRoute(
              path: Routes.discovery,
              page: DiscoveryRoute.page,
            ),
            AutoRoute(
              path: Routes.profile,
              page: ProfileRoute.page,
            ),
          ],
        ),
        AutoRoute(
          path: Routes.mediaDetail,
          page: MediaDetailRoute.page,
        ),
        AutoRoute(
          path: Routes.booking,
          page: BookingRoute.page,
        ),
        AutoRoute(
          path: Routes.settings,
          page: SettingRoute.page,
        ),
        RedirectRoute(path: '*', redirectTo: Routes.home),
      ];
}

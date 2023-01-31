// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<String>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MediaDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MediaDetailRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: MediaDetailPage(
          key: args.key,
          id: args.id,
          heroTag: args.heroTag,
        ),
      );
    },
    BookingRoute.name: (routeData) {
      final args = routeData.argsAs<BookingRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: BookingPage(
          key: args.key,
          modelId: args.modelId,
        ),
      );
    },
    NewsFeedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const NewsFeedPage(),
      );
    },
    DiscoveryRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const DiscoveryPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            RouteConfig(
              NewsFeedRoute.name,
              path: 'home/newsFeed',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              DiscoveryRoute.name,
              path: 'home/discovery',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              ProfileRoute.name,
              path: 'home/profile',
              parent: HomeRoute.name,
            ),
          ],
        ),
        RouteConfig(
          MediaDetailRoute.name,
          path: '/mediaDetail',
        ),
        RouteConfig(
          BookingRoute.name,
          path: '/booking',
        ),
        RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/home',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [MediaDetailPage]
class MediaDetailRoute extends PageRouteInfo<MediaDetailRouteArgs> {
  MediaDetailRoute({
    Key? key,
    required int id,
    required String heroTag,
  }) : super(
          MediaDetailRoute.name,
          path: '/mediaDetail',
          args: MediaDetailRouteArgs(
            key: key,
            id: id,
            heroTag: heroTag,
          ),
        );

  static const String name = 'MediaDetailRoute';
}

class MediaDetailRouteArgs {
  const MediaDetailRouteArgs({
    this.key,
    required this.id,
    required this.heroTag,
  });

  final Key? key;

  final int id;

  final String heroTag;

  @override
  String toString() {
    return 'MediaDetailRouteArgs{key: $key, id: $id, heroTag: $heroTag}';
  }
}

/// generated route for
/// [BookingPage]
class BookingRoute extends PageRouteInfo<BookingRouteArgs> {
  BookingRoute({
    Key? key,
    required int modelId,
  }) : super(
          BookingRoute.name,
          path: '/booking',
          args: BookingRouteArgs(
            key: key,
            modelId: modelId,
          ),
        );

  static const String name = 'BookingRoute';
}

class BookingRouteArgs {
  const BookingRouteArgs({
    this.key,
    required this.modelId,
  });

  final Key? key;

  final int modelId;

  @override
  String toString() {
    return 'BookingRouteArgs{key: $key, modelId: $modelId}';
  }
}

/// generated route for
/// [NewsFeedPage]
class NewsFeedRoute extends PageRouteInfo<void> {
  const NewsFeedRoute()
      : super(
          NewsFeedRoute.name,
          path: 'home/newsFeed',
        );

  static const String name = 'NewsFeedRoute';
}

/// generated route for
/// [DiscoveryPage]
class DiscoveryRoute extends PageRouteInfo<void> {
  const DiscoveryRoute()
      : super(
          DiscoveryRoute.name,
          path: 'home/discovery',
        );

  static const String name = 'DiscoveryRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: 'home/profile',
        );

  static const String name = 'ProfileRoute';
}

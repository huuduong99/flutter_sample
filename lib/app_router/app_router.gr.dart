// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter_sample/features/application/splash_page.dart' as _i9;
import 'package:flutter_sample/features/booking/booking_page.dart' as _i1;
import 'package:flutter_sample/features/discovery/discovery_page.dart' as _i2;
import 'package:flutter_sample/features/home/home_page.dart' as _i3;
import 'package:flutter_sample/features/login/login_page.dart' as _i4;
import 'package:flutter_sample/features/media_detail/media_detail_page.dart'
    as _i5;
import 'package:flutter_sample/features/news_feed/news_feed_page.dart' as _i6;
import 'package:flutter_sample/features/profile/profile_page.dart' as _i7;
import 'package:flutter_sample/features/settings/settings_page.dart' as _i8;

/// generated route for
/// [_i1.BookingPage]
class BookingRoute extends _i10.PageRouteInfo<BookingRouteArgs> {
  BookingRoute({
    _i11.Key? key,
    required int modelId,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          BookingRoute.name,
          args: BookingRouteArgs(
            key: key,
            modelId: modelId,
          ),
          initialChildren: children,
        );

  static const String name = 'BookingRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookingRouteArgs>();
      return _i1.BookingPage(
        key: args.key,
        modelId: args.modelId,
      );
    },
  );
}

class BookingRouteArgs {
  const BookingRouteArgs({
    this.key,
    required this.modelId,
  });

  final _i11.Key? key;

  final int modelId;

  @override
  String toString() {
    return 'BookingRouteArgs{key: $key, modelId: $modelId}';
  }
}

/// generated route for
/// [_i2.DiscoveryPage]
class DiscoveryRoute extends _i10.PageRouteInfo<void> {
  const DiscoveryRoute({List<_i10.PageRouteInfo>? children})
      : super(
          DiscoveryRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoveryRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i2.DiscoveryPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.MediaDetailPage]
class MediaDetailRoute extends _i10.PageRouteInfo<MediaDetailRouteArgs> {
  MediaDetailRoute({
    _i11.Key? key,
    required int id,
    required String heroTag,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          MediaDetailRoute.name,
          args: MediaDetailRouteArgs(
            key: key,
            id: id,
            heroTag: heroTag,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaDetailRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MediaDetailRouteArgs>();
      return _i5.MediaDetailPage(
        key: args.key,
        id: args.id,
        heroTag: args.heroTag,
      );
    },
  );
}

class MediaDetailRouteArgs {
  const MediaDetailRouteArgs({
    this.key,
    required this.id,
    required this.heroTag,
  });

  final _i11.Key? key;

  final int id;

  final String heroTag;

  @override
  String toString() {
    return 'MediaDetailRouteArgs{key: $key, id: $id, heroTag: $heroTag}';
  }
}

/// generated route for
/// [_i6.NewsFeedPage]
class NewsFeedRoute extends _i10.PageRouteInfo<void> {
  const NewsFeedRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NewsFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsFeedRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.NewsFeedPage();
    },
  );
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfilePage();
    },
  );
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i10.PageRouteInfo<void> {
  const SettingRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SettingPage();
    },
  );
}

/// generated route for
/// [_i9.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashPage();
    },
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/injector/locator.dart' as di;
import 'package:push_notification_fcm/services/fcm/fcm_service.dart';

import 'app_router/app_router.dart';
import 'app_router/router_observer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final FcmService _fcmService;
  final _appRouter = AppRouter();

  @override
  void initState() {
    di.init(GetIt.I);
    _fcmService = GetIt.I<FcmService>();
    _fcmService.registryListenNewNotify();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        // this should always return new instances
        navigatorObservers: () => [RouterObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

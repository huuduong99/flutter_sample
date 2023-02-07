import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_sample/injector/app_injector.dart';
import 'package:flutter_sample/services/fcm/fcm_service.dart';
import 'package:flutter_sample/widgets/reset_widget.dart';

import 'app_router/app_router.dart';
import 'app_router/router_observer.dart';
import 'features/application/bloc/application_bloc.dart';
import 'generated/l10n.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final ApplicationBloc _applicationBloc;
  final _appRouter = AppRouter();

  @override
  void initState() {
    AppInjector.init();
    _applicationBloc = AppInjector.instance<ApplicationBloc>();
    AppInjector.instance<FcmService>().init();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ApplicationBloc>.value(value: _applicationBloc),
      ],
      child: BlocConsumer<ApplicationBloc, ApplicationState>(
        listenWhen: (previous, current) =>
            previous.applicationHandle != current.applicationHandle,
        listener: (context, state) {
          state.applicationHandle?.when(logout: () {
            AppInjector.reset();
            RestartWidget.restartApp(context);
          });
        },
        buildWhen: (previous, current) =>
            previous.locale != current.locale ||
            previous.isDarkMode != current.isDarkMode,
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            locale: Locale(state.locale),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: FlexThemeData.light(scheme: FlexScheme.blue),
            darkTheme: FlexThemeData.dark(scheme: FlexScheme.blueWhale),
            themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
            routerDelegate: AutoRouterDelegate(
              _appRouter,
              // this should always return new instances
              navigatorObservers: () => [RouterObserver()],
            ),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}

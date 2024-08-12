import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/injector/app_injector.dart';
import 'package:flutter_sample/services/push_notification_service/push_notification_service.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:flutter_sample/widgets/reset_widget.dart';

import 'package:flutter_sample/bloc_observer.dart';

import 'package:flutter_sample/my_app.dart';

Future<void> runMain({
  required AsyncCallback firebaseInitialization,
}) async {
  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await firebaseInitialization();
    await Hive.initFlutter();

    await PushNotificationService.init();
    AppInjector.init();
    await AppInjector.allReady();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    Bloc.observer = MyBlocObserver();

    runApp(const RestartWidget(child: MyApp()));
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
    FirebaseCrashlytics.instance.log(error.toString());
  });
}

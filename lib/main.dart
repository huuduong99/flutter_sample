import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:flutter_sample/widgets/reset_widget.dart';

import 'services/push_notification_service.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'my_app.dart';

Future<void> runMain() async {
  runZonedGuarded<Future<void>>(() async {
    await Hive.initFlutter();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    Bloc.observer = MyBlocObserver();

    PushNotificationService.init();

    runApp(const RestartWidget(child: MyApp()));
  }, (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
    FirebaseCrashlytics.instance.log(error.toString());
  });
}

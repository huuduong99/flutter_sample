import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:push_notification_fcm/widgets/reset_widget.dart';

import 'background_notification.dart';

import 'bloc_observer.dart';
import 'firebase_options.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  BackgroundNotification.init();

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: false, // Required to display a heads up notification
    badge: true,
    sound: true,
  );

  debugPrint('fcmToken: ${await FirebaseMessaging.instance.getToken()}');

  Bloc.observer = MyBlocObserver();
  runApp(const RestartWidget(child: MyApp()));
}

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import 'package:push_notification_fcm/widgets/reset_widget.dart';

import 'background_notification.dart';

import 'firebase_options.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  BackgroundNotification.init();

  /// Nghe tin nhắn khi ở background, terminated
  FirebaseMessaging.onBackgroundMessage(
      BackgroundNotification.firebaseMessagingHandler);

  /// Nghe tin nhắn khi ở foreground
  FirebaseMessaging.onMessage
      .listen(BackgroundNotification.firebaseMessagingHandler);

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true, // Required to display a heads up notification
  //   badge: true,
  //   sound: true,
  // );
  //
  // FirebaseMessaging.onMessage.listen((message) {
  //   print(message);
  // });

  print('fcmToken: ${await FirebaseMessaging.instance.getToken()}');

  runApp(const RestartWidget(child: MyApp()));
}

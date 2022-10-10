import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:push_notification_fcm/core/navigation/app_route.dart';

import 'background_notification.dart';
import 'core/navigation/routes_mapper.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(
      BackgroundNotification.firebaseMessagingBackgroundHandler);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: AppRoute.category,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: RoutesMapper.buildRoute(),
      onGenerateRoute: (RouteSettings settings) =>
          RoutesMapper.onGenerateRoute(settings),
    );
  }
}

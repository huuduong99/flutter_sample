import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

import 'core/logging/logging_wrapper.dart';
import 'models/app_notification.dart';

class BackgroundNotification {
  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'high_importance_channel',
    'Thông báo nội dung',
    description: 'Thông báo về các thay đổi của app',
    importance: Importance.max,
  );
  static final PublishSubject<String> _eventSubjectTapped =
      PublishSubject<String>();

  static bool _isInit = false;

  static final Logger _logger = getLogger('BackgroundNotification');

  static Stream<String> get listenOnNotificationTapped =>
      _eventSubjectTapped.stream;

  static Future<void> init() async {
    if (_isInit) {
      return;
    }
    _initSetting();
    _isInit = true;
    _logger.d('BackgroundNotification init');
  }

  static Future<void> firebaseMessagingHandler(RemoteMessage message) async {
    final payload = message.data['Payload'] ?? message.data['payload'];
    if (payload != null) {
      _handleShowNotification(payload);
      return;
    }
    return;
  }

  static Future<void> _handleShowNotification(String payload) async {
    final AppNotification newAppNotification =
        AppNotification.fromJson(jsonDecode(payload));

    await _pushNotification(
        id: 0,
        title: newAppNotification.title,
        body: newAppNotification.body,
        payload: payload);
  }

  static Future<void> _pushNotification({
    int? id,
    String? title,
    String? body,
    String? payload,
  }) async {
    final details = await _notificationDetails();
    await _flutterLocalNotificationsPlugin.show(
      id ?? 0,
      title,
      body,
      details,
      payload: payload,
    );
  }

  static Future<NotificationDetails> _notificationDetails() async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      _channel.id,
      _channel.name,
      channelDescription: _channel.description,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      playSound: true,
    );

    const DarwinNotificationDetails iosNotificationDetails =
        DarwinNotificationDetails();

    return NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
    );
  }

  static Future<void> _initSetting() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    _logger.d('id: $id');
  }

  static void onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse,
  ) async {
    final String? payload = notificationResponse.payload;
    if (payload != null) {
      _eventSubjectTapped.add(payload);
      _logger.d('notification payload: $payload');
    } else {
      return;
    }
  }

  static void setPayload({required String payload}) {
    _eventSubjectTapped.add(payload);
    _logger.d('notification payload: $payload');
  }
}

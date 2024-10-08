import 'package:firebase_messaging/firebase_messaging.dart';

import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/models/app_notification/app_notification.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/rxdart.dart';

class PushNotificationService {
  PushNotificationService._();

  static final FlutterLocalNotificationsPlugin
      _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'high_importance_channel',
    'Content notification',
    description: 'Notify about app change',
    importance: Importance.max,
  );
  static final PublishSubject<String> _eventSubjectTapped =
      PublishSubject<String>();

  static bool _isInit = false;

  static final Logger _logger = getLogger('PushNotificationService');

  static Stream<String> get listenOnNotificationTapped =>
      _eventSubjectTapped.stream;

  static Future<void> init() async {
    if (_isInit) {
      return;
    }
    _initSetting();
    _isInit = true;
    _logger.d('PushNotificationService init');
  }


  /// Function must top level function or static function to handle FCM message
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
      payload: payload,
    );
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
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
      onDidReceiveBackgroundNotificationResponse:
          _onDidReceiveNotificationResponse,
    );

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  static void _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    // display a dialog with the notification details, tap ok to go to another page
    _logger.d('id: $id');
  }

  static void _onDidReceiveNotificationResponse(
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

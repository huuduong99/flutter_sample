import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/services/push_notification_service/push_notification_service.dart';
import 'package:logger/logger.dart';

import 'package:flutter_sample/common/logging/logging_wrapper.dart';

import 'package:flutter_sample/services/fcm/fcm_service.dart';

class FcmServiceImpl implements FcmService {
  FcmServiceImpl();

  final Logger _logger = getLogger('FcmService');

  @override
  Future<void> init() async {
    _logger.d('FCM init');

    /// Register notification permission ios
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: false, // Required to display a heads up notification
      badge: true,
      sound: true,
    );

    /// Listen message in foreground app
    FirebaseMessaging.onMessage
        .listen(PushNotificationService.firebaseMessagingHandler);

    /// Listen message in background and terminated app
    FirebaseMessaging.onBackgroundMessage(
      PushNotificationService.firebaseMessagingHandler,
    );

    debugPrint('fcmToken: ${await getFcmToken()}');
  }

  @override
  Future<void> setupInteractedMessage() async {
    /// Handle message when user tapped push notification in background app
    FirebaseMessaging.onMessageOpenedApp.listen(_handleDecodeMessage);

    /// Handle message when user tapped push notification in background terminated app
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleDecodeMessage(initialMessage);
    }
  }

  /// Get payload message from RemoteMessage
  void _handleDecodeMessage(RemoteMessage message) {
    final appMessage = message.data;
    final String payload = message.data['Payload'] ?? message.data['payload'];
    PushNotificationService.setPayload(payload: payload);

    _logger.d('appMessage: $appMessage');
  }

  @override
  Future<String?> getFcmToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    return fcmToken;
  }

  @override
  Future<void> deleteFcmToken() async {
    await FirebaseMessaging.instance.deleteToken();
  }

  @override
  Future<void> subscribeToTopic({required String topic}) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }

  @override
  Future<void> unsubscribeFromTopic({required String topic}) async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  }
}

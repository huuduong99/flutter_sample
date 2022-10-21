import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

import '../../background_notification.dart';
import '../../core/logging/logging_wrapper.dart';

import 'fcm_service.dart';

class FcmServiceImpl implements FcmService {
  final Logger _logger = getLogger("FcmService");

  @override
  Future<void> registryListenMessageTapped() async {
    _logger.d('FCM init');

    /// Xử lý tin nhắn khi app ở
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    _logger.d('fcmToken: ${await FirebaseMessaging.instance.getToken()}');
  }

  ///Xử lý tin nhắn khi nhấp vào thông báo  FCM
  void _handleMessage(RemoteMessage message) {
    final appMessage = message.data;
    final String payload = message.data['Payload'] ?? message.data['payload'];
    BackgroundNotification.setPayload(payload: payload);

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
  Future<String?> getInitialFcmPayload() async {
    /// handle tap notification when app terminated
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    String? payload;

    if (initialMessage != null) {
      final appMessage = initialMessage.data;
      payload = appMessage['Payload'] ?? appMessage['payload'];
    }

    return payload;
  }
}

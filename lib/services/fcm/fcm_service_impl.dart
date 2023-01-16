import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:logger/logger.dart';

import '../../background_notification.dart';
import '../../common/logging/logging_wrapper.dart';

import 'fcm_service.dart';

class FcmServiceImpl implements FcmService {
  final Logger _logger = getLogger("FcmService");

  @override
  Future<void> registryListenNewNotify() async {
    _logger.d('FCM init');

    /// Nghe thông báo từ FCM khi ở foreground
    FirebaseMessaging.onMessage
        .listen(BackgroundNotification.firebaseMessagingHandler);

    /// Nghe thông báo từ FCM khi ở background và terminated
    FirebaseMessaging.onBackgroundMessage(
        BackgroundNotification.firebaseMessagingHandler);
  }

  @override
  Future<void> setupInteractedMessage() async {
    /// Xử lý tin nhắn khi người dùng nhấn vào thông báo đẩy,khi app ở background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    /// Xử lý tin nhắn khi người dùng nhấn vào thông báo đẩy,khi app ở terminated
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
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
  Future<void> subscribeToTopic({required String topic}) async {
    await FirebaseMessaging.instance.subscribeToTopic(topic);
  }

  @override
  Future<void> unsubscribeFromTopic({required String topic}) async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(topic);
  }
}

abstract class FcmService {
  ///Đăng ký nghe thông báo mới
  Future<void> registryListenNewNotify();

  /// Lấy thông tin nội dung thông báo khi nhấp vào thông báo đẩy
  Future<void> setupInteractedMessage();

  /// Lấy fcm để làm gì đó
  Future<String?> getFcmToken();

  /// Vô hiệu hóa token hiện tại
  Future<void> deleteFcmToken();

  /// Đăng ký theo dõi chủ để
  Future<void> subscribeToTopic({required String topic});

  /// Hủy đăng ký theo dõi chủ để
  Future<void> unsubscribeFromTopic({required String topic});
}

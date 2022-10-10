
abstract class FcmService {
  Future<void> registryListenMessageTapped();

  Future<String?> getFcmToken();

  Future<void> deleteFcmToken();

  Future<String?> getInitialFcmPayload();
}
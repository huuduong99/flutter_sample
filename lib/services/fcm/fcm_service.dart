abstract class FcmService {

  Future<void> init();

  Future<void> setupInteractedMessage();


  Future<String?> getFcmToken();


  Future<void> deleteFcmToken();


  Future<void> subscribeToTopic({required String topic});


  Future<void> unsubscribeFromTopic({required String topic});
}

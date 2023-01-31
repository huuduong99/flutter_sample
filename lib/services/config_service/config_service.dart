abstract class ConfigService {
  Future<void> init();

  String get accessToken;

  Future<void> setAccessToken(String value);

  Future<void> clear();
}
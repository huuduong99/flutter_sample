abstract class ConfigService {
  Future<void> init();

  String get accessToken;

  Future<void> setAccessToken(String value);

  String get locale;

  Future<void> setLocale(String value);

  Future<void> clear();
}
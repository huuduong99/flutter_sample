import 'package:hive_flutter/adapters.dart';

import 'config_service.dart';

class ConfigServiceImpl implements ConfigService {
  /// Whether the secure storage service is initialized.
  bool _isInitialized = false;
  late Box _box;

  @override
  Future<void> init() async {
    if (_isInitialized) {
      return;
    }
    _box = await Hive.openBox<dynamic>(
      'configStorage',
    );
    _isInitialized = true;
  }

  @override
  String get accessToken => _box.get('accessToken', defaultValue: '') as String;

  @override
  Future<void> setAccessToken(String value) async {
    await _box.put('accessToken', value);
  }

  @override
  Future<void> clear() async {
    await _box.put('accessToken', '');
  }
}

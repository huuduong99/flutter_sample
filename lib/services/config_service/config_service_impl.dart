import 'package:flutter_sample/injector/app_injector.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:flutter_sample/services/config_service/config_service.dart';

class ConfigServiceImpl implements ConfigService {

  ConfigServiceImpl(){
    init();
  }
  /// Whether the secure storage service is initialized.
  bool _isInitialized = false;
  late Box _box;

  @override
  Future<void> init() async {
    if (_isInitialized) {
      AppInjector.signalReady(this);
      return;
    }
    _box = await Hive.openBox<dynamic>(
      'configStorage',
    );
    _isInitialized = true;
    AppInjector.signalReady(this);
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

  @override
  String get locale => _box.get('locale', defaultValue: 'vi') as String;

  @override
  Future<void> setLocale(String value) async {
    await _box.put('locale', value);
  }

  @override
  bool get isDarkMode => _box.get('isDarkMode', defaultValue: false) as bool;

  @override
  Future<void> setIsDarkMode(bool value) async {
    await _box.put('isDarkMode', value);
  }
}

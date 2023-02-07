import 'package:flutter_sample/injector/service_injector.dart';
import 'package:get_it/get_it.dart';

import 'bloc_injector.dart';

/// Injector using get_it package for simple service locator pattern.
///
/// You must pass a GetIt instance via the [init] function to register all needed services.
/// All classes who using Locator to get instance of service must be call via
/// [AppInjector.instance] from this class instead of [GetIt.I] .
class AppInjector {
  AppInjector._();

  static final GetIt _instance = GetIt.I;

  static GetIt get instance => _instance;

  /// call to register all services needed for app to be active.
  static init() {
    ServiceInjector.register(_instance);
    BLocInjector.register(_instance);
  }

  static reset() {
    _instance.reset();
  }
}



import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/core/injector/service_injector.dart';

import 'bloc_injector.dart';

/// Injector using get_it package for simple service locator pattern.
///
/// You must pass a GetIt instance via the [init] function to register all needed services.
/// All classes who using Locator to get instance of service must be call via
/// [CoreInjector.locator] from this class instead of [GetIt.I] .
class CoreInjector {
  CoreInjector._();

  static GetIt? _injector;

  /// call to register all services needed for core to be active.
  static init(GetIt getIt) {
    _injector = getIt;
    BLocInjector.register(getIt);
    ServiceInjector.register(getIt);
  }

  static reset() {
    if (_injector == null) {
      throw Exception('reset');
    }
    BLocInjector.resetSingleton(_injector!);
    ServiceInjector.resetSingleton(_injector!);
  }
}

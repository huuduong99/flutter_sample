import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/services/config_service/config_service.dart';
import 'package:push_notification_fcm/services/config_service/config_service_impl.dart';

import '../../services/fcm/fcm_service.dart';
import '../../services/fcm/fcm_service_impl.dart';

class ServiceInjector {
  static void register(GetIt injector) async {
    injector.registerLazySingleton<FcmService>(
      () => FcmServiceImpl(),
    );

    injector.registerLazySingleton<ConfigService>(
      () => ConfigServiceImpl(),
    );
  }

  static void resetSingleton(GetIt injector) {
    injector.resetLazySingleton<FcmService>();
  }
}

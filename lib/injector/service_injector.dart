import 'package:get_it/get_it.dart';

import '../../services/fcm/fcm_service.dart';
import '../../services/fcm/fcm_service_impl.dart';

class ServiceInjector {
  static void register(GetIt injector) async {
    injector.registerLazySingleton<FcmService>(
      () => FcmServiceImpl(),
    );
  }

  static void resetSingleton(GetIt injector) {
    injector.resetLazySingleton<FcmService>();
  }
}

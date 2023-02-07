import 'package:get_it/get_it.dart';
import 'package:flutter_sample/services/config_service/config_service.dart';
import 'package:flutter_sample/services/config_service/config_service_impl.dart';

import '../../services/fcm/fcm_service.dart';
import '../../services/fcm/fcm_service_impl.dart';

class ServiceInjector {
  ServiceInjector._();

  static void register(GetIt injector) async {
    injector.registerLazySingleton<FcmService>(
      () => FcmServiceImpl(),
    );

    injector.registerLazySingleton<ConfigService>(
      () => ConfigServiceImpl(),
    );
  }

}

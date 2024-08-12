import 'package:flutter_sample/services/fcm/fcm_service_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_sample/services/config_service/config_service.dart';
import 'package:flutter_sample/services/config_service/config_service_impl.dart';

import 'package:flutter_sample/services/fcm/fcm_service.dart';

class ServiceInjector {
  ServiceInjector._();

  static void register(GetIt injector) async {
    injector
      ..registerSingleton<ConfigService>(
        ConfigServiceImpl(),
        signalsReady: true,
      )
      ..registerSingletonAsync<FcmService>(
            () async {
          final FcmService fcmService = FcmServiceImpl();

          await fcmService.init();
          return fcmService;
        },
      );
  }
}

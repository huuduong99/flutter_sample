import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/services/dialog_service/dialog_service.dart';

import '../../services/fcm/fcm_service.dart';
import '../../services/fcm/fcm_service_impl.dart';

class ServiceInjector {
  static register(GetIt injector) async {
    injector.registerLazySingleton<FcmService>(
      () => FcmServiceImpl(),
    );

    injector.registerLazySingleton<DialogService>(
      () => DialogService(),
    );
  }

  static resetSingleton(GetIt injector) {
    injector.resetLazySingleton<FcmService>();
  }
}

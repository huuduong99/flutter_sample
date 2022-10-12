import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/features/booking/bloc/booking_bloc.dart';

import '../../features/home/bloc/home_bloc.dart';

class BLocInjector {
  static void register(GetIt injector) {
    injector.registerLazySingleton<HomeBloc>(
      () => HomeBloc(
        fcmService: injector(),
        dialogService: injector(),
      ),
    );

    injector.registerFactory<BookingBloc>(
      () => BookingBloc(),
    );
  }

  static void resetSingleton(GetIt injector) {
    injector.resetLazySingleton<HomeBloc>();
  }
}

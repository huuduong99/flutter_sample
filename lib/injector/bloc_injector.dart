import 'package:get_it/get_it.dart';
import 'package:push_notification_fcm/features/booking/bloc/booking_bloc.dart';
import 'package:push_notification_fcm/features/media_detail/bloc/media_detail_bloc.dart';
import 'package:push_notification_fcm/repository/user_repository.dart';

import '../../features/home/bloc/home_bloc.dart';

class BLocInjector {
  static void register(GetIt injector) {
    injector.registerLazySingleton<UserRepository>(
      () => UserRepository(),
    );

    injector.registerLazySingleton<HomeBloc>(
      () => HomeBloc(userRepository: injector()),
    );

    injector.registerFactory<MediaDetailBloc>(
      () => MediaDetailBloc(
        userRepository: injector(),
      ),
    );

    injector.registerFactory<BookingBloc>(
      () => BookingBloc(
        userRepository: injector(),
      ),
    );
  }

  static void resetSingleton(GetIt injector) {
    injector.resetLazySingleton<HomeBloc>();
  }
}

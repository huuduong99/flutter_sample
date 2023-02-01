import 'package:get_it/get_it.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';
import 'package:flutter_sample/features/booking/bloc/booking_bloc.dart';
import 'package:flutter_sample/features/media_detail/bloc/media_detail_bloc.dart';
import 'package:flutter_sample/repository/user_repository.dart';

import '../../features/home/bloc/home_bloc.dart';
import '../features/login/bloc/login_bloc.dart';

class BLocInjector {
  static void register(GetIt injector) {
    injector.registerLazySingleton<ApplicationBloc>(
      () => ApplicationBloc(secureConfigService: injector()),
    );

    injector.registerLazySingleton<UserRepository>(
      () => UserRepository(),
    );

    injector.registerFactory<LoginBloc>(
      () => LoginBloc(secureConfigService: injector()),
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

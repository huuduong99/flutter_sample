import 'package:get_it/get_it.dart';
import 'package:flutter_sample/features/application/bloc/application_bloc.dart';
import 'package:flutter_sample/features/booking/bloc/booking_bloc.dart';
import 'package:flutter_sample/features/media_detail/bloc/media_detail_bloc.dart';

import 'package:flutter_sample/features/home/bloc/home_bloc.dart';
import 'package:flutter_sample/features/login/bloc/login_bloc.dart';
import 'package:flutter_sample/repositories/user_repository.dart';

class BLocInjector {
  BLocInjector._();

  static void register(GetIt injector) {
    injector
      ..registerLazySingleton<ApplicationBloc>(
            () => ApplicationBloc(secureConfigService: injector()),
      )
      ..registerLazySingleton<UserRepository>(
            () => UserRepository(),
      )
      ..registerFactory<LoginBloc>(
            () => LoginBloc(secureConfigService: injector()),
      )
      ..registerSingleton<HomeBloc>(
        HomeBloc(
          userRepository: injector(),
        ),
      )
      ..registerFactory<MediaDetailBloc>(
            () => MediaDetailBloc(
          userRepository: injector(),
        ),
      )
      ..registerFactory<BookingBloc>(
            () => BookingBloc(
          userRepository: injector(),
        ),
      );
  }
}

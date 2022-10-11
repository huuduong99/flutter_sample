import 'package:get_it/get_it.dart';

import '../../features/home/bloc/home_bloc.dart';

class BLocInjector {
  static register(GetIt injector) {
    injector.registerLazySingleton<HomeBloc>(
      () => HomeBloc(
        fcmService: injector(),
      ),
    );
  }

  static resetSingleton(GetIt injector) {
    injector.resetLazySingleton<HomeBloc>();
  }
}

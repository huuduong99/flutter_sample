// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/application/bloc/application_bloc.dart' as _i9;
import '../features/booking/bloc/booking_bloc.dart' as _i10;
import '../features/home/bloc/home_bloc.dart' as _i11;
import '../features/login/bloc/login_bloc.dart' as _i7;
import '../features/media_detail/bloc/media_detail_bloc.dart' as _i12;
import '../repositories/user_repository.dart' as _i8;
import '../services/config_service/config_service.dart' as _i3;
import '../services/config_service/config_service_impl.dart' as _i4;
import '../services/fcm/fcm_service.dart' as _i5;
import '../services/fcm/fcm_service_impl.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.ConfigService>(
      () {
        final i = _i4.ConfigServiceImpl();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    await gh.lazySingletonAsync<_i5.FcmService>(
      () {
        final i = _i6.FcmServiceImpl();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i7.LoginBloc>(
        () => _i7.LoginBloc(secureConfigService: gh<_i3.ConfigService>()));
    gh.lazySingleton<_i8.UserRepository>(() => _i8.UserRepository());
    gh.singleton<_i9.ApplicationBloc>(() =>
        _i9.ApplicationBloc(secureConfigService: gh<_i3.ConfigService>()));
    gh.factory<_i10.BookingBloc>(
        () => _i10.BookingBloc(userRepository: gh<_i8.UserRepository>()));
    gh.factory<_i11.HomeBloc>(
        () => _i11.HomeBloc(userRepository: gh<_i8.UserRepository>()));
    gh.factory<_i12.MediaDetailBloc>(
        () => _i12.MediaDetailBloc(userRepository: gh<_i8.UserRepository>()));
    return this;
  }
}

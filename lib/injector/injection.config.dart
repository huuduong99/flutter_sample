// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:api_client/api_client.dart' as _i14;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/application/bloc/application_bloc.dart' as _i10;
import '../features/booking/bloc/booking_bloc.dart' as _i11;
import '../features/home/bloc/home_bloc.dart' as _i12;
import '../features/login/bloc/login_bloc.dart' as _i8;
import '../features/media_detail/bloc/media_detail_bloc.dart' as _i13;
import '../repositories/user_repository.dart' as _i9;
import '../services/config_service/config_service.dart' as _i3;
import '../services/config_service/config_service_impl.dart' as _i4;
import '../services/fcm/fcm_service.dart' as _i6;
import '../services/fcm/fcm_service_impl.dart' as _i7;
import 'modules/dio/dio_provider.dart' as _i15;

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
    final dioProvider = _$DioProvider();
    await gh.singletonAsync<_i3.ConfigService>(
      () {
        final i = _i4.ConfigServiceImpl();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.singleton<_i5.Dio>(() => dioProvider.dio(gh<_i3.ConfigService>()));
    await gh.lazySingletonAsync<_i6.FcmService>(
      () {
        final i = _i7.FcmServiceImpl();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i8.LoginBloc>(
        () => _i8.LoginBloc(secureConfigService: gh<_i3.ConfigService>()));
    gh.lazySingleton<_i9.UserRepository>(() => _i9.UserRepository());
    gh.singleton<_i10.ApplicationBloc>(() =>
        _i10.ApplicationBloc(secureConfigService: gh<_i3.ConfigService>()));
    gh.factory<_i11.BookingBloc>(
        () => _i11.BookingBloc(userRepository: gh<_i9.UserRepository>()));
    gh.factory<_i12.HomeBloc>(
        () => _i12.HomeBloc(userRepository: gh<_i9.UserRepository>()));
    gh.factory<_i13.MediaDetailBloc>(
        () => _i13.MediaDetailBloc(userRepository: gh<_i9.UserRepository>()));
    await _i14.ApiClientPackageModule().init(gh);
    return this;
  }
}

class _$DioProvider extends _i15.DioProvider {}

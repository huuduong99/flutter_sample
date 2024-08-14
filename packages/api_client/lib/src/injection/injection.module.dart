//@GeneratedMicroModule;ApiClientPackageModule;package:api_client/src/injection/injection.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:api_client/src/rest_client/authen_api/authen_api.dart'
    as _i1059;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;

class ApiClientPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i1059.AuthenApiClient>(() => _i1059.AuthenApiClient(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
  }
}

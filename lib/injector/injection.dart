import 'package:api_client/api_client.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_sample/injector/injection.config.dart';

final _instance = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
  externalPackageModulesAfter: [
    ExternalModule(ApiClientPackageModule),
  ],
)
Future<void> configureDependencies() => _instance.init();

T getInjector<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
  Type? type,
}) {
  return _instance.get<T>(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
    type: type,
  );
}

void reset() => _instance.reset();

void signalReady(Object? instance) => _instance.signalReady(instance);

Future<void> allReady() => _instance.allReady();

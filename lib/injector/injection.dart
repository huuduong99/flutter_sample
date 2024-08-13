/*
 * *
 *  * Created by duongnh, TRUONG MINH THINH TECHNOLOGY JOINT STOCK COMPANY on 13/08/2024
 *  * Copyright (c) 2024 Mobile Team, TMT Solution . All rights reserved.
 * *
 */

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_sample/injector/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() => getIt.init();

T getInjector<T extends Object>({
  String? instanceName,
  dynamic param1,
  dynamic param2,
  Type? type,
}) {
  return getIt.get<T>(
    instanceName: instanceName,
    param1: param1,
    param2: param2,
    type: type,
  );
}


void reset() => getIt.reset();

void signalReady(Object? instance) => getIt.signalReady(instance);

Future<void> allReady() => getIt.allReady();

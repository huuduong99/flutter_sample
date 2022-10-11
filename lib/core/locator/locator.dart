import 'package:get_it/get_it.dart';

import '../injector/app_injector.dart';

late GetIt _locator;

GetIt get locator => _locator;

void init(GetIt getIt) {
  _locator = getIt;
  CoreInjector.init(getIt);
}

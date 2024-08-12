import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_sample/common/logging/logging_wrapper.dart';

class MyBlocObserver extends BlocObserver {
  final _logger = getLogger('Flutter BLoc');

  @override
  void onCreate(BlocBase bloc) {
    _logger.w('onCreate: (${bloc.runtimeType})');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    _logger.d('onEvent: (${bloc.runtimeType}) $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    _logger.d('onChange (${bloc.runtimeType}) $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.e('onError (${bloc.runtimeType}) $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    _logger.w('onCLose: (${bloc.runtimeType})');
  }
}

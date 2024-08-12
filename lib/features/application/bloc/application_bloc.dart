import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/services/config_service/config_service.dart';

part 'application_bloc.freezed.dart';

part 'application_event.dart';

part 'application_state.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required ConfigService secureConfigService,
  })  : _config = secureConfigService,
        super(const ApplicationState()) {
    on<ApplicationLoaded>(_onApplicationLoaded);
    on<ApplicationLogoutRequested>(_onLogoutRequested);
    on<ApplicationLocaleChanged>(_onLocaleChanged);
    on<ApplicationThemeChanged>(_onThemeChanged);
  }

  final _logger = getLogger('ApplicationBloc');

  final ConfigService _config;

  /// on [ApplicationLoaded]
  ///
  /// * Init local service.
  /// * Start check for update.
  /// * Start check connectivity.
  Future<void> _onApplicationLoaded(
    ApplicationLoaded event,
    Emitter<ApplicationState> emit,
  ) async {
    try {
      /// Check authentication status.
      final bool isAuthenticated = _config.accessToken.isNotEmpty;

      /// Load locale.
      final String locale = _config.locale;

      /// Load theme mode.
      final bool isDarkMode = _config.isDarkMode;

      const User user = User(
        id: -1,
        name: 'Dương Nguyễn',
        imagePath:
            'https://khoinguonsangtao.vn/wp-content/uploads/2022/08/hinh-nen-gai-xinh.jpg',
      );

      emit(
        state.copyWith(
          status: ApplicationStatus.startSuccess,
          isAuthenticated: isAuthenticated,
          locale: locale,
          isDarkMode: isDarkMode,
          user: user,
        ),
      );
    } catch (e, s) {
      _logger.e('ApplicationLoadFailure', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: ApplicationStatus.startFailure,
        ),
      );
    }
  }

  FutureOr<void> _onLogoutRequested(
    ApplicationLogoutRequested event,
    Emitter<ApplicationState> emit,
  ) async {
    try {
      await _config.clear();

      emit(
        state.copyWith(applicationHandle: ApplicationHandle.logout()),
      );
    } catch (e, s) {
      emit(
        state.copyWith(applicationHandle: ApplicationHandle.logout()),
      );
      _logger.e('ApplicationLogoutRequestFailure', error: e, stackTrace: s);
    }
  }

  FutureOr<void> _onLocaleChanged(
    ApplicationLocaleChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.locale == event.locale) {
      return;
    }

    try {
      await _config.setLocale(event.locale);

      emit(
        state.copyWith(
          locale: event.locale,
        ),
      );
    } catch (e, s) {
      _logger.e('ApplicationLocaleChangeFailure', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: ApplicationStatus.startFailure,
        ),
      );
    }
  }

  FutureOr<void> _onThemeChanged(
    ApplicationThemeChanged event,
    Emitter<ApplicationState> emit,
  ) async {
    if (state.isDarkMode == event.isDarkMode) {
      return;
    }

    try {
      await _config.setIsDarkMode(event.isDarkMode);

      emit(
        state.copyWith(
          isDarkMode: event.isDarkMode,
        ),
      );
    } catch (e, s) {
      _logger.e('ApplicationThemeChangeFailure', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: ApplicationStatus.startFailure,
        ),
      );
    }
  }
}

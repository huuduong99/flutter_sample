import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_sample/common/helpers/string_hepler.dart';
import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/generated/l10n.dart';
import 'package:flutter_sample/services/config_service/config_service.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';

part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required ConfigService secureConfigService,
  })  : _secureConfigService = secureConfigService,
        super(const LoginState()) {
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginButtonPressed>(_onLoginButtonPressed);
  }

  final ConfigService _secureConfigService;
  final _logger = getLogger('LoginBloc');

  FutureOr<void> _onEmailChanged(
    LoginEmailChanged event,
    Emitter<LoginState> emit,
  ) {
    final bool emailIsValid = event.email.isEmail;

    String? errorEmail;
    if (!emailIsValid) {
      if (!event.email.isEmail) {
        errorEmail = S.current.emailInvalid;
      }
    }

    emit(
      state.copyWith(
        email: event.email,
        errorEmail: errorEmail,
      ),
    );
  }

  FutureOr<void> _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final bool passwordIsValid = event.password.trim().isNotEmpty;
    String? errorPassword;

    if (!passwordIsValid) {
      if (event.password.trim().isEmpty) {
        errorPassword = S.current.pleaseEnterPassword;
      }
    }

    emit(
      state.copyWith(
        password: event.password,
        errorPassword: errorPassword,
      ),
    );
  }

  FutureOr<void> _onLoginButtonPressed(
    LoginButtonPressed event,
    Emitter<LoginState> emit,
  ) async {
    bool isValid = true;

    ///nếu có thì phải là email
    if (!event.email.isEmail) {
      emit(
        state.copyWith(
          errorEmail: S.current.emailInvalid,
        ),
      );
      isValid = false;
    }

    if (event.password.trim().isEmpty) {
      emit(
        state.copyWith(
          errorPassword: S.current.pleaseEnterPassword,
        ),
      );
      isValid = false;
    }

    if (!isValid) {
      return;
    }

    emit(state.copyWith(isBusy: true));
    await Future.delayed(const Duration(seconds: 1), () {});
    if (event.email.isNotEmpty && event.password.isNotEmpty) {
      await _secureConfigService
          .setAccessToken('${event.email} ${event.password}');

      emit(
        state.copyWith(
          isBusy: false,
          loginHandle: LoginHandle.loginSuccess(),
        ),
      );
    } else {
      _logger.e(S.current.invalidData);
      emit(
        state.copyWith(
          isBusy: false,
          loginHandle: LoginHandle.loginFailure(
            message: S.current.invalidData,
          ),
        ),
      );
    }
  }
}

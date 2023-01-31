part of 'login_bloc.dart';

@immutable
@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isBusy,
    LoginHandle? loginHandle,
    String? errorMessage,
    String? errorEmail,
    String? errorPassword,
  }) = _LoginState;
}

enum LoginStatus {
  initial,
  loading,
  success,
  failure,
}

@Freezed(equal: false)
class LoginHandle with _$LoginHandle {
  factory LoginHandle.loginSuccess() = _LoginHandleLoginSuccess;

  factory LoginHandle.loginFailure({
    required String message,
  }) = _LoginHandleLoginFailure;
}

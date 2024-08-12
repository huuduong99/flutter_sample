part of 'login_bloc.dart';

@immutable
@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({required String email}) =
      LoginEmailChanged;

  const factory LoginEvent.passwordChanged({required String password}) =
      LoginPasswordChanged;

  const factory LoginEvent.loginButtonPressed({
    required String email,
    required String password,
  }) = LoginButtonPressed;
}

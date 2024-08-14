part of 'application_bloc.dart';

@immutable
@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    @Default(PageStatus.initial()) PageStatus status,
    @Default(false) isAuthenticated,
    @Default('vi') String locale,
    ApplicationHandle? applicationHandle,
    @Default(false) isDarkMode,
    @Default(User()) User user,
  }) = _ApplicationState;
}


@Freezed(equal: false)
class ApplicationHandle with _$ApplicationHandle {
  factory ApplicationHandle.logout() = _ApplicationLogout;
}

part of 'application_bloc.dart';

@immutable
@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    @Default(ApplicationStatus.initial) ApplicationStatus status,
    @Default(false) isAuthenticated,
    @Default('vi') String locale,
    ApplicationHandle? applicationHandle,
  }) = _ApplicationState;
}

enum ApplicationStatus {
  initial,
  loading,
  startSuccess,
  startFailure,
}

@Freezed(equal: false)
class ApplicationHandle with _$ApplicationHandle {
  factory ApplicationHandle.logout() = _ApplicationLogout;
}

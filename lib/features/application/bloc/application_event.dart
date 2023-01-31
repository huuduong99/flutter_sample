part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  factory ApplicationEvent.loaded() = ApplicationLoaded;

  factory ApplicationEvent.logoutRequested() = ApplicationLogoutRequested;

}

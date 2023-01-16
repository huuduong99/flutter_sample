part of 'home_bloc.dart';

@immutable
@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loaded() = HomeLoaded;

  const factory HomeEvent.viewDetail({
    required AppNotification appNotification,
  }) = HomeViewDetail;
}

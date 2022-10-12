part of 'home_bloc.dart';

@immutable
@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loaded() = HomeLoaded;

  const factory HomeEvent.tabIndexChanged({required int index}) =
      HomeTabIndexChanged;

  const factory HomeEvent.handleWithInitialFcmPayload() =
      HomeHandleWithInitialFcmPayload;
}

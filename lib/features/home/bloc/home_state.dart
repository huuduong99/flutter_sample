part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<User> users,
    String? errorMessage,
    @Default(0) int tabIndex,
    @Default(false) bool isBusy,
    HomeHandle? handle,
  }) = _HomeState;
}

enum HomeStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}

@Freezed(equal: false)
class HomeHandle with _$HomeHandle {
  factory HomeHandle.viewDetail({
    required int id,
  }) = _HomeHandleViewDetail;

  factory HomeHandle.failure({
    required String message,
  }) = _HomeHandleFailure;
}

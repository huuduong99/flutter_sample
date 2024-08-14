part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(PageStatus.initial()) PageStatus status,
    @Default([]) List<User> users,
    String? errorMessage,
    @Default(0) int tabIndex,
    @Default(false) bool isBusy,
    HomeHandle? handle,
  }) = _HomeState;
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

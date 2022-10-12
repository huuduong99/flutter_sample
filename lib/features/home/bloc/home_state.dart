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
  }) = _HomeState;
}

enum HomeStatus {
  initial,
  loading,
  busy,
  loadSuccess,
  loadFailure,
}

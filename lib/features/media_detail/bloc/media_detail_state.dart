part of 'media_detail_bloc.dart';

@immutable
@freezed
class MediaDetailState with _$MediaDetailState {
  const MediaDetailState._();

  const factory MediaDetailState({
    @Default(MediaDetailStatus.initial) MediaDetailStatus status,
    @Default(User()) User user,
    String? errorMessage,
    @Default(false) bool isBusy,
    @Default('') String heroTag,
  }) = _MediaDetailState;
}

enum MediaDetailStatus {
  initial,
  loading,
  loadSuccess,
  loadFailure,
}

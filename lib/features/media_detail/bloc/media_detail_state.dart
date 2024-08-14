part of 'media_detail_bloc.dart';

@immutable
@freezed
class MediaDetailState with _$MediaDetailState {
  const MediaDetailState._();

  const factory MediaDetailState({
    @Default(PageStatus.initial()) PageStatus status,
    @Default(User()) User user,
    String? errorMessage,
    @Default(false) bool isBusy,
    @Default('') String heroTag,
  }) = _MediaDetailState;
}



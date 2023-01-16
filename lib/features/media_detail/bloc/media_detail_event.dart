part of 'media_detail_bloc.dart';

@immutable
@freezed
class MediaDetailEvent with _$MediaDetailEvent {
  const factory MediaDetailEvent.loaded({
    required int id,
    required String heroTag,
  }) = MediaDetailLoaded;
}

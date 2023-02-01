import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_sample/models/user.dart';
import 'package:flutter_sample/repository/user_repository.dart';

import '../../../common/logging/logging_wrapper.dart';

part 'media_detail_bloc.freezed.dart';

part 'media_detail_event.dart';

part 'media_detail_state.dart';

class MediaDetailBloc extends Bloc<MediaDetailEvent, MediaDetailState> {
  MediaDetailBloc({
    required UserRepository userRepository,
  }) : super(const MediaDetailState()) {
    _userRepository = userRepository;

    on<MediaDetailLoaded>(_onMediaDetailLoaded);
  }

  late final UserRepository _userRepository;

  final _logger = getLogger('MediaDetailBloc');

  FutureOr<void> _onMediaDetailLoaded(
    MediaDetailLoaded event,
    Emitter<MediaDetailState> emit,
  ) async {
    emit(
      state.copyWith(status: MediaDetailStatus.loading),
    );

    try {
      final User user = await _userRepository.getUserById(id: event.id);
      emit(
        state.copyWith(
          user: user,
          status: MediaDetailStatus.loadSuccess,
          heroTag: event.heroTag,
        ),
      );
    } catch (e, s) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: MediaDetailStatus.loadFailure,
        ),
      );
      _logger.e('_MediaDetailLoadedFailure', e.toString(), s);
    }
  }
}

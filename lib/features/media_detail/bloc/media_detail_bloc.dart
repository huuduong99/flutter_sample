import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/common/bloc_core/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_sample/models/user/user.dart';

import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

part 'media_detail_bloc.freezed.dart';

part 'media_detail_event.dart';

part 'media_detail_state.dart';

@injectable
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
      state.copyWith(
        status: const PageStatus.loading(),
      ),
    );

    try {
      final User user = await _userRepository.getUserById(id: event.id);
      emit(
        state.copyWith(
          user: user,
          status: const PageStatus.loadSuccess(),
          heroTag: event.heroTag,
        ),
      );
    } catch (e, s) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: const PageStatus.loadFailed(),
        ),
      );
      _logger.e('_MediaDetailLoadedFailure', error: e, stackTrace: s);
    }
  }
}

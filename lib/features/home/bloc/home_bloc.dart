import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/common/bloc_core/page_status.dart';
import 'package:flutter_sample/services/push_notification_service/push_notification_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_sample/models/app_notification/app_notification.dart';
import 'package:flutter_sample/models/user/user.dart';

import 'package:flutter_sample/repositories/user_repository.dart';
import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required UserRepository userRepository,
  }) : super(const HomeState()) {
    _userRepository = userRepository;

    _subscription = PushNotificationService.listenOnNotificationTapped.listen(
      (data) {
        _handleNotifyMessage(data);
      },
    );

    on<HomeLoaded>(_onHomeLoaded);
    on<HomeViewDetail>(_onViewDetail);
  }

  late final UserRepository _userRepository;

  /// Add StreamSubscription to this param to dispose when bloc is closed.
  late final StreamSubscription _subscription;
  final _logger = getLogger('HomeBloc');

  FutureOr<void> _onHomeLoaded(
    HomeLoaded event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const PageStatus.loading(),
      ),
    );

    try {
      final users = await _userRepository.getUsers();
      emit(
        state.copyWith(
          users: users,
          status: const PageStatus.loadSuccess(),
        ),
      );
    } catch (e, s) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: const PageStatus.loadFailed(),
        ),
      );
      _logger.e('_onHomeLoadedFailure', error: e, stackTrace: s);
    }
  }

  Future<void> _handleNotifyMessage(String data) async {
    final payload = jsonDecode(data);

    final AppNotification appNotification = AppNotification.fromJson(payload);

    add(HomeEvent.viewDetail(appNotification: appNotification));
  }

  FutureOr<void> _onViewDetail(HomeViewDetail event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        handle: HomeHandle.viewDetail(
          id: event.appNotification.id!,
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}

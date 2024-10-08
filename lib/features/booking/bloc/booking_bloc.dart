import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/common/bloc_core/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_sample/common/logging/logging_wrapper.dart';
import 'package:flutter_sample/models/user/user.dart';
import 'package:flutter_sample/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

part 'booking_bloc.freezed.dart';

part 'booking_event.dart';

part 'booking_state.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc({
    required UserRepository userRepository,
  }) : super(const BookingState()) {
    _userRepository = userRepository;

    on<BookingLoaded>(_onLoaded);
    on<BookingImageChanged>(_onImageChanged);
    on<BookingNameChanged>(_onNameChanged);
    on<BookingPhoneChanged>(_onPhoneChanged);
    on<BookingEmailChanged>(_onEmailChanged);
    on<BookingAddressChanged>(_onAddressChanged);
    on<BookingCancelAllChanged>(_onCancelAllChanged);
    on<BookingSaveButtonPressed>(_onSaveButtonPressed);
  }

  final _logger = getLogger('BookingBloc');
  late final UserRepository _userRepository;

  FutureOr<void> _onLoaded(
    BookingLoaded event,
    Emitter<BookingState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const PageStatus.loading(),
      ),
    );
    try {
      final user = await _userRepository.getUserById(id: event.modelId);

      emit(
        state.copyWith(
          status: const PageStatus.loadSuccess(),
          user: user,
        ),
      );
    } catch (e, s) {
      _logger.e('BookingLoadFailure', error: e, stackTrace: s);
      emit(
        state.copyWith(
          status: const PageStatus.loadFailed(),
          errorMessage: e.toString(),
        ),
      );
    }
  }

  FutureOr<void> _onImageChanged(
    BookingImageChanged event,
    Emitter<BookingState> emit,
  ) {
    emit(
      state.copyWith(
        editingImage: event.imagePath,
      ),
    );
  }

  FutureOr<void> _onNameChanged(
    BookingNameChanged event,
    Emitter<BookingState> emit,
  ) {
    final bool nameIsValid = event.name.trim().isNotEmpty;

    String? nameError;
    if (!nameIsValid) {
      if (event.name.trim().isEmpty) {
        nameError = 'Vui lòng nhập họ và tên';
      }
    }

    emit(
      state.copyWith(
        editingName: event.name,
        nameError: nameError,
      ),
    );
  }

  FutureOr<void> _onPhoneChanged(
    BookingPhoneChanged event,
    Emitter<BookingState> emit,
  ) {
    // final bool phoneIsValid = event.phoneNumber.isPhoneNumber;
    //
    // String? phoneError;
    // if (!phoneIsValid) {
    //   if (event.phoneNumber.trim().isEmpty) {
    //     phoneError = 'Vui lòng nhập số điện thoại';
    //   } else if (!event.phoneNumber.isPhoneNumber) {
    //     phoneError = 'Số điện thoại không hợp lệ';
    //   }
    // }
    //
    // emit(state.copyWith(
    //   editingPhone: event.phoneNumber,
    //   phoneError: phoneError,
    //   status: PageStatus.none,
    // ));
  }

  FutureOr<void> _onEmailChanged(
    BookingEmailChanged event,
    Emitter<BookingState> emit,
  ) {
    // final bool emailIsValid = event.email.trim().isEmpty || event.email.isEmail;
    //
    // String? emailError;
    // if (!emailIsValid) {
    //   if (event.email.isNotEmpty && !event.email.isEmail) {
    //     emailError = 'Email không hợp lệ';
    //   }
    // }

    // emit(state.copyWith(
    //   editingEmail: event.email,
    //   emailError: emailError,
    //   status: PageStatus.none,
    // ));
  }

  FutureOr<void> _onAddressChanged(
    BookingAddressChanged event,
    Emitter<BookingState> emit,
  ) {
    final bool addressIsValid = event.address.trim().isNotEmpty;

    String? addressError;

    if (!addressIsValid) {
      if (event.address.trim().isEmpty) {
        addressError = 'Vui lòng nhập địa chỉ';
      }
    }

    emit(
      state.copyWith(
        editingAddress: event.address,
        addressError: addressError,
      ),
    );
  }

  FutureOr<void> _onCancelAllChanged(
    BookingCancelAllChanged event,
    Emitter<BookingState> emit,
  ) {
    emit(
      BookingState(
        user: state.user,
      ),
    );
  }

  FutureOr<void> _onSaveButtonPressed(
    BookingSaveButtonPressed event,
    Emitter<BookingState> emit,
  ) async {
    // bool isValid = true;
    //
    // if (event.name.trim().isEmpty) {
    //   emit(state.copyWith(nameError: 'Vui lòng nhập họ và tên'));
    //   isValid = false;
    // }
    //
    // /// không bắt buộc nhập email ,nhưng nếu có thì phải là email
    // if (event.email.isNotEmpty && !event.email.isEmail) {
    //   emit(
    //     state.copyWith(
    //       emailError: 'Email không hợp lệ',
    //     ),
    //   );
    //   isValid = false;
    // }
    //
    // if (event.phoneNumber.trim().isEmpty) {
    //   emit(state.copyWith(phoneError: 'Vui lòng nhập số điện thoại'));
    //   isValid = false;
    // } else if (!event.phoneNumber.isPhoneNumber) {
    //   emit(
    //     state.copyWith(
    //       phoneError: 'Số điện thoại không hợp lệ',
    //     ),
    //   );
    //   isValid = false;
    // }
    //
    // if (event.address.trim().isEmpty) {
    //   emit(state.copyWith(addressError: 'Vui lòng nhập địa chỉ'));
    //   isValid = false;
    // }
    //
    // if (!isValid) {
    //   return;
    // }
    //
    // try {
    //   emit(
    //     state.copyWith(
    //       status: PageStatus.loading,
    //       errorMessage: null,
    //     ),
    //   );
    //
    //   final User update = state.user.copyWith(
    //       name: event.name,
    //       phoneNumber: event.phoneNumber,
    //       email: event.email == '' ? null : event.email,
    //       address: event.address);
    //
    //   if (event.imagePath != '') {
    //     await _userApi.updateProfileAvatar(imagePath: event.imagePath);
    //   }
    //
    //   final user = await _userApi.updateUserProfile(user: update);
    //
    //   emit(
    //     BookingState(user: user, status: PageStatus.updateInfoSuccess),
    //   );
    // } catch (e, s) {
    //   emit(
    //     state.copyWith(
    //       status: PageStatus.updateInfoFailure,
    //       errorMessage: e.toString(),
    //     ),
    //   );
    //   _logger.e('BookingSaveFailure', e.toString(), s);
    // }
  }
}

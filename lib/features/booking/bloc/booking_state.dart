part of 'booking_bloc.dart';

@immutable
@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    @Default(User()) User user,

    ///editing value
    String? editingName,
    String? editingPhone,
    String? editingEmail,
    String? editingAddress,
    String? editingImage,

    ///error
    String? nameError,
    String? emailError,
    String? phoneError,
    String? addressError,
    String? errorMessage,
    @Default(PageStatus.initial()) PageStatus status,
  }) = _BookingState;
}


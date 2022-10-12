part of 'booking_bloc.dart';

@immutable
@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.bookingLoaded({required User user}) =
      BookingLoaded;

  const factory BookingEvent.bookingImageChanged(String imagePath) =
      BookingImageChanged;

  const factory BookingEvent.bookingNameChanged(String name) =
      BookingNameChanged;

  const factory BookingEvent.bookingPhoneChanged(String phoneNumber) =
      BookingPhoneChanged;

  const factory BookingEvent.bookingEmailChanged(String email) =
      BookingEmailChanged;

  const factory BookingEvent.bookingAddressChanged(String address) =
      BookingAddressChanged;

  const factory BookingEvent.bookingCancelAllChanged() =
      BookingCancelAllChanged;

  const factory BookingEvent.bookingSaveButtonPressed({
    required String name,
    required String phoneNumber,
    required String email,
    required String address,
    required String imagePath,
  }) = BookingSaveButtonPressed;
}

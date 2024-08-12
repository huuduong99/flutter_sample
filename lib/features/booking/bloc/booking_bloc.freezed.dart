// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BookingLoadedImplCopyWith<$Res> {
  factory _$$BookingLoadedImplCopyWith(
          _$BookingLoadedImpl value, $Res Function(_$BookingLoadedImpl) then) =
      __$$BookingLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int modelId});
}

/// @nodoc
class __$$BookingLoadedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingLoadedImpl>
    implements _$$BookingLoadedImplCopyWith<$Res> {
  __$$BookingLoadedImplCopyWithImpl(
      _$BookingLoadedImpl _value, $Res Function(_$BookingLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
  }) {
    return _then(_$BookingLoadedImpl(
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BookingLoadedImpl implements BookingLoaded {
  const _$BookingLoadedImpl({required this.modelId});

  @override
  final int modelId;

  @override
  String toString() {
    return 'BookingEvent.bookingLoaded(modelId: $modelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLoadedImpl &&
            (identical(other.modelId, modelId) || other.modelId == modelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLoadedImplCopyWith<_$BookingLoadedImpl> get copyWith =>
      __$$BookingLoadedImplCopyWithImpl<_$BookingLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingLoaded(modelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingLoaded?.call(modelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingLoaded != null) {
      return bookingLoaded(modelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingLoaded != null) {
      return bookingLoaded(this);
    }
    return orElse();
  }
}

abstract class BookingLoaded implements BookingEvent {
  const factory BookingLoaded({required final int modelId}) =
      _$BookingLoadedImpl;

  int get modelId;
  @JsonKey(ignore: true)
  _$$BookingLoadedImplCopyWith<_$BookingLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingImageChangedImplCopyWith<$Res> {
  factory _$$BookingImageChangedImplCopyWith(_$BookingImageChangedImpl value,
          $Res Function(_$BookingImageChangedImpl) then) =
      __$$BookingImageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$BookingImageChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingImageChangedImpl>
    implements _$$BookingImageChangedImplCopyWith<$Res> {
  __$$BookingImageChangedImplCopyWithImpl(_$BookingImageChangedImpl _value,
      $Res Function(_$BookingImageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$BookingImageChangedImpl(
      null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingImageChangedImpl implements BookingImageChanged {
  const _$BookingImageChangedImpl(this.imagePath);

  @override
  final String imagePath;

  @override
  String toString() {
    return 'BookingEvent.bookingImageChanged(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImageChangedImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImageChangedImplCopyWith<_$BookingImageChangedImpl> get copyWith =>
      __$$BookingImageChangedImplCopyWithImpl<_$BookingImageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingImageChanged(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingImageChanged?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingImageChanged != null) {
      return bookingImageChanged(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingImageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingImageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingImageChanged != null) {
      return bookingImageChanged(this);
    }
    return orElse();
  }
}

abstract class BookingImageChanged implements BookingEvent {
  const factory BookingImageChanged(final String imagePath) =
      _$BookingImageChangedImpl;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$BookingImageChangedImplCopyWith<_$BookingImageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingNameChangedImplCopyWith<$Res> {
  factory _$$BookingNameChangedImplCopyWith(_$BookingNameChangedImpl value,
          $Res Function(_$BookingNameChangedImpl) then) =
      __$$BookingNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$BookingNameChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingNameChangedImpl>
    implements _$$BookingNameChangedImplCopyWith<$Res> {
  __$$BookingNameChangedImplCopyWithImpl(_$BookingNameChangedImpl _value,
      $Res Function(_$BookingNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BookingNameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingNameChangedImpl implements BookingNameChanged {
  const _$BookingNameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'BookingEvent.bookingNameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingNameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingNameChangedImplCopyWith<_$BookingNameChangedImpl> get copyWith =>
      __$$BookingNameChangedImplCopyWithImpl<_$BookingNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingNameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingNameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingNameChanged != null) {
      return bookingNameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingNameChanged != null) {
      return bookingNameChanged(this);
    }
    return orElse();
  }
}

abstract class BookingNameChanged implements BookingEvent {
  const factory BookingNameChanged(final String name) =
      _$BookingNameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$BookingNameChangedImplCopyWith<_$BookingNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingPhoneChangedImplCopyWith<$Res> {
  factory _$$BookingPhoneChangedImplCopyWith(_$BookingPhoneChangedImpl value,
          $Res Function(_$BookingPhoneChangedImpl) then) =
      __$$BookingPhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$BookingPhoneChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingPhoneChangedImpl>
    implements _$$BookingPhoneChangedImplCopyWith<$Res> {
  __$$BookingPhoneChangedImplCopyWithImpl(_$BookingPhoneChangedImpl _value,
      $Res Function(_$BookingPhoneChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$BookingPhoneChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingPhoneChangedImpl implements BookingPhoneChanged {
  const _$BookingPhoneChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'BookingEvent.bookingPhoneChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPhoneChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPhoneChangedImplCopyWith<_$BookingPhoneChangedImpl> get copyWith =>
      __$$BookingPhoneChangedImplCopyWithImpl<_$BookingPhoneChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingPhoneChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingPhoneChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingPhoneChanged != null) {
      return bookingPhoneChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingPhoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingPhoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingPhoneChanged != null) {
      return bookingPhoneChanged(this);
    }
    return orElse();
  }
}

abstract class BookingPhoneChanged implements BookingEvent {
  const factory BookingPhoneChanged(final String phoneNumber) =
      _$BookingPhoneChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$BookingPhoneChangedImplCopyWith<_$BookingPhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingEmailChangedImplCopyWith<$Res> {
  factory _$$BookingEmailChangedImplCopyWith(_$BookingEmailChangedImpl value,
          $Res Function(_$BookingEmailChangedImpl) then) =
      __$$BookingEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$BookingEmailChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingEmailChangedImpl>
    implements _$$BookingEmailChangedImplCopyWith<$Res> {
  __$$BookingEmailChangedImplCopyWithImpl(_$BookingEmailChangedImpl _value,
      $Res Function(_$BookingEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$BookingEmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingEmailChangedImpl implements BookingEmailChanged {
  const _$BookingEmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'BookingEvent.bookingEmailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingEmailChangedImplCopyWith<_$BookingEmailChangedImpl> get copyWith =>
      __$$BookingEmailChangedImplCopyWithImpl<_$BookingEmailChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingEmailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingEmailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingEmailChanged != null) {
      return bookingEmailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingEmailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingEmailChanged != null) {
      return bookingEmailChanged(this);
    }
    return orElse();
  }
}

abstract class BookingEmailChanged implements BookingEvent {
  const factory BookingEmailChanged(final String email) =
      _$BookingEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$BookingEmailChangedImplCopyWith<_$BookingEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingAddressChangedImplCopyWith<$Res> {
  factory _$$BookingAddressChangedImplCopyWith(
          _$BookingAddressChangedImpl value,
          $Res Function(_$BookingAddressChangedImpl) then) =
      __$$BookingAddressChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$BookingAddressChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingAddressChangedImpl>
    implements _$$BookingAddressChangedImplCopyWith<$Res> {
  __$$BookingAddressChangedImplCopyWithImpl(_$BookingAddressChangedImpl _value,
      $Res Function(_$BookingAddressChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$BookingAddressChangedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingAddressChangedImpl implements BookingAddressChanged {
  const _$BookingAddressChangedImpl(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'BookingEvent.bookingAddressChanged(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAddressChangedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingAddressChangedImplCopyWith<_$BookingAddressChangedImpl>
      get copyWith => __$$BookingAddressChangedImplCopyWithImpl<
          _$BookingAddressChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingAddressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingAddressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingAddressChanged != null) {
      return bookingAddressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingAddressChanged != null) {
      return bookingAddressChanged(this);
    }
    return orElse();
  }
}

abstract class BookingAddressChanged implements BookingEvent {
  const factory BookingAddressChanged(final String address) =
      _$BookingAddressChangedImpl;

  String get address;
  @JsonKey(ignore: true)
  _$$BookingAddressChangedImplCopyWith<_$BookingAddressChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BookingCancelAllChangedImplCopyWith<$Res> {
  factory _$$BookingCancelAllChangedImplCopyWith(
          _$BookingCancelAllChangedImpl value,
          $Res Function(_$BookingCancelAllChangedImpl) then) =
      __$$BookingCancelAllChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BookingCancelAllChangedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingCancelAllChangedImpl>
    implements _$$BookingCancelAllChangedImplCopyWith<$Res> {
  __$$BookingCancelAllChangedImplCopyWithImpl(
      _$BookingCancelAllChangedImpl _value,
      $Res Function(_$BookingCancelAllChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BookingCancelAllChangedImpl implements BookingCancelAllChanged {
  const _$BookingCancelAllChangedImpl();

  @override
  String toString() {
    return 'BookingEvent.bookingCancelAllChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingCancelAllChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingCancelAllChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingCancelAllChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingCancelAllChanged != null) {
      return bookingCancelAllChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingCancelAllChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingCancelAllChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingCancelAllChanged != null) {
      return bookingCancelAllChanged(this);
    }
    return orElse();
  }
}

abstract class BookingCancelAllChanged implements BookingEvent {
  const factory BookingCancelAllChanged() = _$BookingCancelAllChangedImpl;
}

/// @nodoc
abstract class _$$BookingSaveButtonPressedImplCopyWith<$Res> {
  factory _$$BookingSaveButtonPressedImplCopyWith(
          _$BookingSaveButtonPressedImpl value,
          $Res Function(_$BookingSaveButtonPressedImpl) then) =
      __$$BookingSaveButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String email,
      String address,
      String imagePath});
}

/// @nodoc
class __$$BookingSaveButtonPressedImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$BookingSaveButtonPressedImpl>
    implements _$$BookingSaveButtonPressedImplCopyWith<$Res> {
  __$$BookingSaveButtonPressedImplCopyWithImpl(
      _$BookingSaveButtonPressedImpl _value,
      $Res Function(_$BookingSaveButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? address = null,
    Object? imagePath = null,
  }) {
    return _then(_$BookingSaveButtonPressedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BookingSaveButtonPressedImpl implements BookingSaveButtonPressed {
  const _$BookingSaveButtonPressedImpl(
      {required this.name,
      required this.phoneNumber,
      required this.email,
      required this.address,
      required this.imagePath});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String address;
  @override
  final String imagePath;

  @override
  String toString() {
    return 'BookingEvent.bookingSaveButtonPressed(name: $name, phoneNumber: $phoneNumber, email: $email, address: $address, imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingSaveButtonPressedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, email, address, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingSaveButtonPressedImplCopyWith<_$BookingSaveButtonPressedImpl>
      get copyWith => __$$BookingSaveButtonPressedImplCopyWithImpl<
          _$BookingSaveButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) bookingLoaded,
    required TResult Function(String imagePath) bookingImageChanged,
    required TResult Function(String name) bookingNameChanged,
    required TResult Function(String phoneNumber) bookingPhoneChanged,
    required TResult Function(String email) bookingEmailChanged,
    required TResult Function(String address) bookingAddressChanged,
    required TResult Function() bookingCancelAllChanged,
    required TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)
        bookingSaveButtonPressed,
  }) {
    return bookingSaveButtonPressed(
        name, phoneNumber, email, address, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? bookingLoaded,
    TResult? Function(String imagePath)? bookingImageChanged,
    TResult? Function(String name)? bookingNameChanged,
    TResult? Function(String phoneNumber)? bookingPhoneChanged,
    TResult? Function(String email)? bookingEmailChanged,
    TResult? Function(String address)? bookingAddressChanged,
    TResult? Function()? bookingCancelAllChanged,
    TResult? Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
  }) {
    return bookingSaveButtonPressed?.call(
        name, phoneNumber, email, address, imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? bookingLoaded,
    TResult Function(String imagePath)? bookingImageChanged,
    TResult Function(String name)? bookingNameChanged,
    TResult Function(String phoneNumber)? bookingPhoneChanged,
    TResult Function(String email)? bookingEmailChanged,
    TResult Function(String address)? bookingAddressChanged,
    TResult Function()? bookingCancelAllChanged,
    TResult Function(String name, String phoneNumber, String email,
            String address, String imagePath)?
        bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingSaveButtonPressed != null) {
      return bookingSaveButtonPressed(
          name, phoneNumber, email, address, imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookingLoaded value) bookingLoaded,
    required TResult Function(BookingImageChanged value) bookingImageChanged,
    required TResult Function(BookingNameChanged value) bookingNameChanged,
    required TResult Function(BookingPhoneChanged value) bookingPhoneChanged,
    required TResult Function(BookingEmailChanged value) bookingEmailChanged,
    required TResult Function(BookingAddressChanged value)
        bookingAddressChanged,
    required TResult Function(BookingCancelAllChanged value)
        bookingCancelAllChanged,
    required TResult Function(BookingSaveButtonPressed value)
        bookingSaveButtonPressed,
  }) {
    return bookingSaveButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BookingLoaded value)? bookingLoaded,
    TResult? Function(BookingImageChanged value)? bookingImageChanged,
    TResult? Function(BookingNameChanged value)? bookingNameChanged,
    TResult? Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult? Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult? Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult? Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult? Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
  }) {
    return bookingSaveButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookingLoaded value)? bookingLoaded,
    TResult Function(BookingImageChanged value)? bookingImageChanged,
    TResult Function(BookingNameChanged value)? bookingNameChanged,
    TResult Function(BookingPhoneChanged value)? bookingPhoneChanged,
    TResult Function(BookingEmailChanged value)? bookingEmailChanged,
    TResult Function(BookingAddressChanged value)? bookingAddressChanged,
    TResult Function(BookingCancelAllChanged value)? bookingCancelAllChanged,
    TResult Function(BookingSaveButtonPressed value)? bookingSaveButtonPressed,
    required TResult orElse(),
  }) {
    if (bookingSaveButtonPressed != null) {
      return bookingSaveButtonPressed(this);
    }
    return orElse();
  }
}

abstract class BookingSaveButtonPressed implements BookingEvent {
  const factory BookingSaveButtonPressed(
      {required final String name,
      required final String phoneNumber,
      required final String email,
      required final String address,
      required final String imagePath}) = _$BookingSaveButtonPressedImpl;

  String get name;
  String get phoneNumber;
  String get email;
  String get address;
  String get imagePath;
  @JsonKey(ignore: true)
  _$$BookingSaveButtonPressedImplCopyWith<_$BookingSaveButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  User get user => throw _privateConstructorUsedError;

  ///editing value
  String? get editingName => throw _privateConstructorUsedError;
  String? get editingPhone => throw _privateConstructorUsedError;
  String? get editingEmail => throw _privateConstructorUsedError;
  String? get editingAddress => throw _privateConstructorUsedError;
  String? get editingImage => throw _privateConstructorUsedError;

  ///error
  String? get nameError => throw _privateConstructorUsedError;
  String? get emailError => throw _privateConstructorUsedError;
  String? get phoneError => throw _privateConstructorUsedError;
  String? get addressError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call(
      {User user,
      String? editingName,
      String? editingPhone,
      String? editingEmail,
      String? editingAddress,
      String? editingImage,
      String? nameError,
      String? emailError,
      String? phoneError,
      String? addressError,
      String? errorMessage,
      BookingStatus status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? editingName = freezed,
    Object? editingPhone = freezed,
    Object? editingEmail = freezed,
    Object? editingAddress = freezed,
    Object? editingImage = freezed,
    Object? nameError = freezed,
    Object? emailError = freezed,
    Object? phoneError = freezed,
    Object? addressError = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      editingName: freezed == editingName
          ? _value.editingName
          : editingName // ignore: cast_nullable_to_non_nullable
              as String?,
      editingPhone: freezed == editingPhone
          ? _value.editingPhone
          : editingPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      editingEmail: freezed == editingEmail
          ? _value.editingEmail
          : editingEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      editingAddress: freezed == editingAddress
          ? _value.editingAddress
          : editingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editingImage: freezed == editingImage
          ? _value.editingImage
          : editingImage // ignore: cast_nullable_to_non_nullable
              as String?,
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as String?,
      addressError: freezed == addressError
          ? _value.addressError
          : addressError // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingStateImplCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$BookingStateImplCopyWith(
          _$BookingStateImpl value, $Res Function(_$BookingStateImpl) then) =
      __$$BookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User user,
      String? editingName,
      String? editingPhone,
      String? editingEmail,
      String? editingAddress,
      String? editingImage,
      String? nameError,
      String? emailError,
      String? phoneError,
      String? addressError,
      String? errorMessage,
      BookingStatus status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$BookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$BookingStateImpl>
    implements _$$BookingStateImplCopyWith<$Res> {
  __$$BookingStateImplCopyWithImpl(
      _$BookingStateImpl _value, $Res Function(_$BookingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? editingName = freezed,
    Object? editingPhone = freezed,
    Object? editingEmail = freezed,
    Object? editingAddress = freezed,
    Object? editingImage = freezed,
    Object? nameError = freezed,
    Object? emailError = freezed,
    Object? phoneError = freezed,
    Object? addressError = freezed,
    Object? errorMessage = freezed,
    Object? status = null,
  }) {
    return _then(_$BookingStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      editingName: freezed == editingName
          ? _value.editingName
          : editingName // ignore: cast_nullable_to_non_nullable
              as String?,
      editingPhone: freezed == editingPhone
          ? _value.editingPhone
          : editingPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      editingEmail: freezed == editingEmail
          ? _value.editingEmail
          : editingEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      editingAddress: freezed == editingAddress
          ? _value.editingAddress
          : editingAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      editingImage: freezed == editingImage
          ? _value.editingImage
          : editingImage // ignore: cast_nullable_to_non_nullable
              as String?,
      nameError: freezed == nameError
          ? _value.nameError
          : nameError // ignore: cast_nullable_to_non_nullable
              as String?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as String?,
      addressError: freezed == addressError
          ? _value.addressError
          : addressError // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BookingStatus,
    ));
  }
}

/// @nodoc

class _$BookingStateImpl implements _BookingState {
  const _$BookingStateImpl(
      {this.user = const User(),
      this.editingName,
      this.editingPhone,
      this.editingEmail,
      this.editingAddress,
      this.editingImage,
      this.nameError,
      this.emailError,
      this.phoneError,
      this.addressError,
      this.errorMessage,
      this.status = BookingStatus.initial});

  @override
  @JsonKey()
  final User user;

  ///editing value
  @override
  final String? editingName;
  @override
  final String? editingPhone;
  @override
  final String? editingEmail;
  @override
  final String? editingAddress;
  @override
  final String? editingImage;

  ///error
  @override
  final String? nameError;
  @override
  final String? emailError;
  @override
  final String? phoneError;
  @override
  final String? addressError;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final BookingStatus status;

  @override
  String toString() {
    return 'BookingState(user: $user, editingName: $editingName, editingPhone: $editingPhone, editingEmail: $editingEmail, editingAddress: $editingAddress, editingImage: $editingImage, nameError: $nameError, emailError: $emailError, phoneError: $phoneError, addressError: $addressError, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.editingName, editingName) ||
                other.editingName == editingName) &&
            (identical(other.editingPhone, editingPhone) ||
                other.editingPhone == editingPhone) &&
            (identical(other.editingEmail, editingEmail) ||
                other.editingEmail == editingEmail) &&
            (identical(other.editingAddress, editingAddress) ||
                other.editingAddress == editingAddress) &&
            (identical(other.editingImage, editingImage) ||
                other.editingImage == editingImage) &&
            (identical(other.nameError, nameError) ||
                other.nameError == nameError) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.phoneError, phoneError) ||
                other.phoneError == phoneError) &&
            (identical(other.addressError, addressError) ||
                other.addressError == addressError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      editingName,
      editingPhone,
      editingEmail,
      editingAddress,
      editingImage,
      nameError,
      emailError,
      phoneError,
      addressError,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      __$$BookingStateImplCopyWithImpl<_$BookingStateImpl>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {final User user,
      final String? editingName,
      final String? editingPhone,
      final String? editingEmail,
      final String? editingAddress,
      final String? editingImage,
      final String? nameError,
      final String? emailError,
      final String? phoneError,
      final String? addressError,
      final String? errorMessage,
      final BookingStatus status}) = _$BookingStateImpl;

  @override
  User get user;
  @override

  ///editing value
  String? get editingName;
  @override
  String? get editingPhone;
  @override
  String? get editingEmail;
  @override
  String? get editingAddress;
  @override
  String? get editingImage;
  @override

  ///error
  String? get nameError;
  @override
  String? get emailError;
  @override
  String? get phoneError;
  @override
  String? get addressError;
  @override
  String? get errorMessage;
  @override
  BookingStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$BookingStateImplCopyWith<_$BookingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

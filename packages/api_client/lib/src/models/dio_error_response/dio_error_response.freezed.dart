// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_error_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DioErrorResponse _$DioErrorResponseFromJson(Map<String, dynamic> json) {
  return _DioErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$DioErrorResponse {
  @JsonKey(
      name: 'ErrorType', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  ErrorType? get errorType => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsRefreshToken')
  bool get isRefreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DioErrorResponseCopyWith<DioErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DioErrorResponseCopyWith<$Res> {
  factory $DioErrorResponseCopyWith(
          DioErrorResponse value, $Res Function(DioErrorResponse) then) =
      _$DioErrorResponseCopyWithImpl<$Res, DioErrorResponse>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'ErrorType',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      ErrorType? errorType,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'IsRefreshToken') bool isRefreshToken});
}

/// @nodoc
class _$DioErrorResponseCopyWithImpl<$Res, $Val extends DioErrorResponse>
    implements $DioErrorResponseCopyWith<$Res> {
  _$DioErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = freezed,
    Object? message = freezed,
    Object? isRefreshToken = null,
  }) {
    return _then(_value.copyWith(
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isRefreshToken: null == isRefreshToken
          ? _value.isRefreshToken
          : isRefreshToken // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DioErrorResponseImplCopyWith<$Res>
    implements $DioErrorResponseCopyWith<$Res> {
  factory _$$DioErrorResponseImplCopyWith(_$DioErrorResponseImpl value,
          $Res Function(_$DioErrorResponseImpl) then) =
      __$$DioErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'ErrorType',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      ErrorType? errorType,
      @JsonKey(name: 'Message') String? message,
      @JsonKey(name: 'IsRefreshToken') bool isRefreshToken});
}

/// @nodoc
class __$$DioErrorResponseImplCopyWithImpl<$Res>
    extends _$DioErrorResponseCopyWithImpl<$Res, _$DioErrorResponseImpl>
    implements _$$DioErrorResponseImplCopyWith<$Res> {
  __$$DioErrorResponseImplCopyWithImpl(_$DioErrorResponseImpl _value,
      $Res Function(_$DioErrorResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorType = freezed,
    Object? message = freezed,
    Object? isRefreshToken = null,
  }) {
    return _then(_$DioErrorResponseImpl(
      errorType: freezed == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as ErrorType?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isRefreshToken: null == isRefreshToken
          ? _value.isRefreshToken
          : isRefreshToken // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DioErrorResponseImpl implements _DioErrorResponse {
  const _$DioErrorResponseImpl(
      {@JsonKey(
          name: 'ErrorType',
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      this.errorType,
      @JsonKey(name: 'Message') this.message,
      @JsonKey(name: 'IsRefreshToken') this.isRefreshToken = false});

  factory _$DioErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DioErrorResponseImplFromJson(json);

  @override
  @JsonKey(
      name: 'ErrorType', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final ErrorType? errorType;
  @override
  @JsonKey(name: 'Message')
  final String? message;
  @override
  @JsonKey(name: 'IsRefreshToken')
  final bool isRefreshToken;

  @override
  String toString() {
    return 'DioErrorResponse(errorType: $errorType, message: $message, isRefreshToken: $isRefreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DioErrorResponseImpl &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isRefreshToken, isRefreshToken) ||
                other.isRefreshToken == isRefreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, errorType, message, isRefreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DioErrorResponseImplCopyWith<_$DioErrorResponseImpl> get copyWith =>
      __$$DioErrorResponseImplCopyWithImpl<_$DioErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DioErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _DioErrorResponse implements DioErrorResponse {
  const factory _DioErrorResponse(
          {@JsonKey(
              name: 'ErrorType',
              unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
          final ErrorType? errorType,
          @JsonKey(name: 'Message') final String? message,
          @JsonKey(name: 'IsRefreshToken') final bool isRefreshToken}) =
      _$DioErrorResponseImpl;

  factory _DioErrorResponse.fromJson(Map<String, dynamic> json) =
      _$DioErrorResponseImpl.fromJson;

  @override
  @JsonKey(
      name: 'ErrorType', unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  ErrorType? get errorType;
  @override
  @JsonKey(name: 'Message')
  String? get message;
  @override
  @JsonKey(name: 'IsRefreshToken')
  bool get isRefreshToken;
  @override
  @JsonKey(ignore: true)
  _$$DioErrorResponseImplCopyWith<_$DioErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

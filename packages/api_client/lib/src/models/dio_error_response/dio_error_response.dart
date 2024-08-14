import 'package:freezed_annotation/freezed_annotation.dart';

part 'dio_error_response.freezed.dart';

part 'dio_error_response.g.dart';

/// DioErrorResponse of customer
@Freezed(fromJson: true, toJson: true)
class DioErrorResponse with _$DioErrorResponse {
  ///
  const factory DioErrorResponse({
    @JsonKey(
      name: 'ErrorType',
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue,
    )
    ErrorType? errorType,
    @JsonKey(name: 'Message') String? message,
    @JsonKey(name: 'IsRefreshToken') @Default(false) bool isRefreshToken,
  }) = _DioErrorResponse;

  ///
  factory DioErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$DioErrorResponseFromJson(json);
}

/// Loại sort danh sách nhân viên
@JsonEnum(valueField: 'errorType')
enum ErrorType {
  /// Cửa hàng bị xóa
  invalidToken(1),

  /// Người dùng bị xóa khỏi cửa hàng, khóa tài khoản sử dụng với cửa hàng
  isDeletedOrBlocked(2),

  ///Người dùng bị thay đổi vai trò trong cửa hàng
  isRoleChanged(4);

  const ErrorType(this.errorType);

  /// loại sort
  final int errorType;

  ///
  int toJson() => errorType;

  ///
  static ErrorType fromValue(int errorType) =>
      ErrorType.values.singleWhere((i) => errorType == i.errorType);
}

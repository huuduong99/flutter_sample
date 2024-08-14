// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DioErrorResponseImpl _$$DioErrorResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DioErrorResponseImpl(
      errorType: $enumDecodeNullable(_$ErrorTypeEnumMap, json['ErrorType'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      message: json['Message'] as String?,
      isRefreshToken: json['IsRefreshToken'] as bool? ?? false,
    );

Map<String, dynamic> _$$DioErrorResponseImplToJson(
        _$DioErrorResponseImpl instance) =>
    <String, dynamic>{
      'ErrorType': instance.errorType,
      'Message': instance.message,
      'IsRefreshToken': instance.isRefreshToken,
    };

const _$ErrorTypeEnumMap = {
  ErrorType.invalidToken: 1,
  ErrorType.isDeletedOrBlocked: 2,
  ErrorType.isRoleChanged: 4,
};

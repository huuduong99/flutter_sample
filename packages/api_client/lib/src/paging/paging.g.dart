// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagingImpl<T> _$$PagingImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PagingImpl<T>(
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
      totalItems: (json['totalCount'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      currentCount: (json['currentCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagingImplToJson<T>(
  _$PagingImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'items': instance.items.map(toJsonT).toList(),
      'totalCount': instance.totalItems,
      'total': instance.total,
      'currentCount': instance.currentCount,
    };

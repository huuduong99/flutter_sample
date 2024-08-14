// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$PagingQueryImplToJson<T>(
  _$PagingQueryImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'from': instance.from,
      'size': instance.size,
      'query': instance.keyword,
      'filters': _$nullableGenericToJson(instance.filters, toJsonT),
    };

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

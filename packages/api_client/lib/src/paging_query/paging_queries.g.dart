// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PagingQueriesImpl _$$PagingQueriesImplFromJson(Map<String, dynamic> json) =>
    _$PagingQueriesImpl(
      keyword: json['SearchText'] as String?,
      sorting: json['Sorting'] as String?,
      offset: (json['SkipCount'] as num?)?.toInt(),
      limit: (json['MaxResultCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PagingQueriesImplToJson(_$PagingQueriesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SearchText', instance.keyword);
  writeNotNull('Sorting', instance.sorting);
  writeNotNull('SkipCount', instance.offset);
  writeNotNull('MaxResultCount', instance.limit);
  return val;
}

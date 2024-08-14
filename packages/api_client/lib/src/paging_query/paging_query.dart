// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_query.freezed.dart';

part 'paging_query.g.dart';

/// Model contain paging info search service
@Freezed(
  genericArgumentFactories: true,
  toJson: true,
)
class PagingQuery<T> with _$PagingQuery<T> {
  ///
  const factory PagingQuery({
    /// limit
    int? from,

    /// offset
    int? size,

    /// searchText
    @JsonKey(name: 'query') String? keyword,

    /// custom filters
    T? filters,
  }) = _PagingQuery;
}

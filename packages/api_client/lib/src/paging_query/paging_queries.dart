// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging_queries.freezed.dart';
part 'paging_queries.g.dart';

/// Paging queries params model
@Freezed(fromJson: true, toJson: true)
class PagingQueries with _$PagingQueries {
  /// Constructor
  const factory PagingQueries({
    @JsonKey(
      name: 'SearchText',
      includeIfNull: false,
    )
        String? keyword,
    @JsonKey(
      name: 'Sorting',
      includeIfNull: false,
    )
        String? sorting,
    @JsonKey(
      name: 'SkipCount',
      includeIfNull: false,
    )
        int? offset,
    @JsonKey(
      name: 'MaxResultCount',
      includeIfNull: false,
    )
        int? limit,
  }) = _PagingQueries;
  const PagingQueries._();

  /// Create a instance if has one field is not null
  static PagingQueries? init({
    String? keyword,
    String? sorting,
    int? offset,
    int? limit,
  }) {
    if (keyword != null || sorting != null || offset != null || limit != null) {
      return PagingQueries(
        keyword: keyword,
        sorting: sorting,
        offset: offset,
        limit: limit,
      );
    } else {
      return null;
    }
  }
}

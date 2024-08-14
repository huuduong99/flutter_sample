// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'paging.freezed.dart';
part 'paging.g.dart';

/// Paging template model
@Freezed(genericArgumentFactories: true)
class Paging<T> with _$Paging<T> {
  /// Constructor
  const factory Paging({
    /// List of <T> items
    required List<T> items,

    /// Total item on server
    @JsonKey(name: 'totalCount') int? totalItems,

    /// Total item on server when using for search service
    int? total,

    /// Current item on this response
    int? currentCount,
  }) = _Paging;

  const Paging._();

  /// From json factory with json data and custom from json function <T>
  factory Paging.fromJson(
    Map<String, Object?> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$PagingFromJson(json, fromJsonT);

  ///
  int? get totalCount => totalItems ?? total;
}

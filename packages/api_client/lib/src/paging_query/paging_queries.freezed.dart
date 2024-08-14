// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PagingQueries _$PagingQueriesFromJson(Map<String, dynamic> json) {
  return _PagingQueries.fromJson(json);
}

/// @nodoc
mixin _$PagingQueries {
  @JsonKey(name: 'SearchText', includeIfNull: false)
  String? get keyword => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sorting', includeIfNull: false)
  String? get sorting => throw _privateConstructorUsedError;
  @JsonKey(name: 'SkipCount', includeIfNull: false)
  int? get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'MaxResultCount', includeIfNull: false)
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingQueriesCopyWith<PagingQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingQueriesCopyWith<$Res> {
  factory $PagingQueriesCopyWith(
          PagingQueries value, $Res Function(PagingQueries) then) =
      _$PagingQueriesCopyWithImpl<$Res, PagingQueries>;
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchText', includeIfNull: false) String? keyword,
      @JsonKey(name: 'Sorting', includeIfNull: false) String? sorting,
      @JsonKey(name: 'SkipCount', includeIfNull: false) int? offset,
      @JsonKey(name: 'MaxResultCount', includeIfNull: false) int? limit});
}

/// @nodoc
class _$PagingQueriesCopyWithImpl<$Res, $Val extends PagingQueries>
    implements $PagingQueriesCopyWith<$Res> {
  _$PagingQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? sorting = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      sorting: freezed == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingQueriesImplCopyWith<$Res>
    implements $PagingQueriesCopyWith<$Res> {
  factory _$$PagingQueriesImplCopyWith(
          _$PagingQueriesImpl value, $Res Function(_$PagingQueriesImpl) then) =
      __$$PagingQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'SearchText', includeIfNull: false) String? keyword,
      @JsonKey(name: 'Sorting', includeIfNull: false) String? sorting,
      @JsonKey(name: 'SkipCount', includeIfNull: false) int? offset,
      @JsonKey(name: 'MaxResultCount', includeIfNull: false) int? limit});
}

/// @nodoc
class __$$PagingQueriesImplCopyWithImpl<$Res>
    extends _$PagingQueriesCopyWithImpl<$Res, _$PagingQueriesImpl>
    implements _$$PagingQueriesImplCopyWith<$Res> {
  __$$PagingQueriesImplCopyWithImpl(
      _$PagingQueriesImpl _value, $Res Function(_$PagingQueriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? sorting = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$PagingQueriesImpl(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      sorting: freezed == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PagingQueriesImpl extends _PagingQueries {
  const _$PagingQueriesImpl(
      {@JsonKey(name: 'SearchText', includeIfNull: false) this.keyword,
      @JsonKey(name: 'Sorting', includeIfNull: false) this.sorting,
      @JsonKey(name: 'SkipCount', includeIfNull: false) this.offset,
      @JsonKey(name: 'MaxResultCount', includeIfNull: false) this.limit})
      : super._();

  factory _$PagingQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PagingQueriesImplFromJson(json);

  @override
  @JsonKey(name: 'SearchText', includeIfNull: false)
  final String? keyword;
  @override
  @JsonKey(name: 'Sorting', includeIfNull: false)
  final String? sorting;
  @override
  @JsonKey(name: 'SkipCount', includeIfNull: false)
  final int? offset;
  @override
  @JsonKey(name: 'MaxResultCount', includeIfNull: false)
  final int? limit;

  @override
  String toString() {
    return 'PagingQueries(keyword: $keyword, sorting: $sorting, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingQueriesImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyword, sorting, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingQueriesImplCopyWith<_$PagingQueriesImpl> get copyWith =>
      __$$PagingQueriesImplCopyWithImpl<_$PagingQueriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PagingQueriesImplToJson(
      this,
    );
  }
}

abstract class _PagingQueries extends PagingQueries {
  const factory _PagingQueries(
      {@JsonKey(name: 'SearchText', includeIfNull: false) final String? keyword,
      @JsonKey(name: 'Sorting', includeIfNull: false) final String? sorting,
      @JsonKey(name: 'SkipCount', includeIfNull: false) final int? offset,
      @JsonKey(name: 'MaxResultCount', includeIfNull: false)
      final int? limit}) = _$PagingQueriesImpl;
  const _PagingQueries._() : super._();

  factory _PagingQueries.fromJson(Map<String, dynamic> json) =
      _$PagingQueriesImpl.fromJson;

  @override
  @JsonKey(name: 'SearchText', includeIfNull: false)
  String? get keyword;
  @override
  @JsonKey(name: 'Sorting', includeIfNull: false)
  String? get sorting;
  @override
  @JsonKey(name: 'SkipCount', includeIfNull: false)
  int? get offset;
  @override
  @JsonKey(name: 'MaxResultCount', includeIfNull: false)
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$PagingQueriesImplCopyWith<_$PagingQueriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

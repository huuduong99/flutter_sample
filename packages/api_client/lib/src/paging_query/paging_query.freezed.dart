// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PagingQuery<T> {
  /// limit
  int? get from => throw _privateConstructorUsedError;

  /// offset
  int? get size => throw _privateConstructorUsedError;

  /// searchText
  @JsonKey(name: 'query')
  String? get keyword => throw _privateConstructorUsedError;

  /// custom filters
  T? get filters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingQueryCopyWith<T, PagingQuery<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingQueryCopyWith<T, $Res> {
  factory $PagingQueryCopyWith(
          PagingQuery<T> value, $Res Function(PagingQuery<T>) then) =
      _$PagingQueryCopyWithImpl<T, $Res, PagingQuery<T>>;
  @useResult
  $Res call(
      {int? from,
      int? size,
      @JsonKey(name: 'query') String? keyword,
      T? filters});
}

/// @nodoc
class _$PagingQueryCopyWithImpl<T, $Res, $Val extends PagingQuery<T>>
    implements $PagingQueryCopyWith<T, $Res> {
  _$PagingQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? size = freezed,
    Object? keyword = freezed,
    Object? filters = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingQueryImplCopyWith<T, $Res>
    implements $PagingQueryCopyWith<T, $Res> {
  factory _$$PagingQueryImplCopyWith(_$PagingQueryImpl<T> value,
          $Res Function(_$PagingQueryImpl<T>) then) =
      __$$PagingQueryImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {int? from,
      int? size,
      @JsonKey(name: 'query') String? keyword,
      T? filters});
}

/// @nodoc
class __$$PagingQueryImplCopyWithImpl<T, $Res>
    extends _$PagingQueryCopyWithImpl<T, $Res, _$PagingQueryImpl<T>>
    implements _$$PagingQueryImplCopyWith<T, $Res> {
  __$$PagingQueryImplCopyWithImpl(
      _$PagingQueryImpl<T> _value, $Res Function(_$PagingQueryImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? size = freezed,
    Object? keyword = freezed,
    Object? filters = freezed,
  }) {
    return _then(_$PagingQueryImpl<T>(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      filters: freezed == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false, genericArgumentFactories: true)
class _$PagingQueryImpl<T> implements _PagingQuery<T> {
  const _$PagingQueryImpl(
      {this.from,
      this.size,
      @JsonKey(name: 'query') this.keyword,
      this.filters});

  /// limit
  @override
  final int? from;

  /// offset
  @override
  final int? size;

  /// searchText
  @override
  @JsonKey(name: 'query')
  final String? keyword;

  /// custom filters
  @override
  final T? filters;

  @override
  String toString() {
    return 'PagingQuery<$T>(from: $from, size: $size, keyword: $keyword, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingQueryImpl<T> &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other.filters, filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, size, keyword,
      const DeepCollectionEquality().hash(filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingQueryImplCopyWith<T, _$PagingQueryImpl<T>> get copyWith =>
      __$$PagingQueryImplCopyWithImpl<T, _$PagingQueryImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PagingQueryImplToJson<T>(this, toJsonT);
  }
}

abstract class _PagingQuery<T> implements PagingQuery<T> {
  const factory _PagingQuery(
      {final int? from,
      final int? size,
      @JsonKey(name: 'query') final String? keyword,
      final T? filters}) = _$PagingQueryImpl<T>;

  @override

  /// limit
  int? get from;
  @override

  /// offset
  int? get size;
  @override

  /// searchText
  @JsonKey(name: 'query')
  String? get keyword;
  @override

  /// custom filters
  T? get filters;
  @override
  @JsonKey(ignore: true)
  _$$PagingQueryImplCopyWith<T, _$PagingQueryImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

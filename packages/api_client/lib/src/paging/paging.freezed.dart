// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Paging<T> _$PagingFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _Paging<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$Paging<T> {
  /// List of <T> items
  List<T> get items => throw _privateConstructorUsedError;

  /// Total item on server
  @JsonKey(name: 'totalCount')
  int? get totalItems => throw _privateConstructorUsedError;

  /// Total item on server when using for search service
  int? get total => throw _privateConstructorUsedError;

  /// Current item on this response
  int? get currentCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<T, Paging<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<T, $Res> {
  factory $PagingCopyWith(Paging<T> value, $Res Function(Paging<T>) then) =
      _$PagingCopyWithImpl<T, $Res, Paging<T>>;
  @useResult
  $Res call(
      {List<T> items,
      @JsonKey(name: 'totalCount') int? totalItems,
      int? total,
      int? currentCount});
}

/// @nodoc
class _$PagingCopyWithImpl<T, $Res, $Val extends Paging<T>>
    implements $PagingCopyWith<T, $Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalItems = freezed,
    Object? total = freezed,
    Object? currentCount = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PagingImplCopyWith<T, $Res>
    implements $PagingCopyWith<T, $Res> {
  factory _$$PagingImplCopyWith(
          _$PagingImpl<T> value, $Res Function(_$PagingImpl<T>) then) =
      __$$PagingImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {List<T> items,
      @JsonKey(name: 'totalCount') int? totalItems,
      int? total,
      int? currentCount});
}

/// @nodoc
class __$$PagingImplCopyWithImpl<T, $Res>
    extends _$PagingCopyWithImpl<T, $Res, _$PagingImpl<T>>
    implements _$$PagingImplCopyWith<T, $Res> {
  __$$PagingImplCopyWithImpl(
      _$PagingImpl<T> _value, $Res Function(_$PagingImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalItems = freezed,
    Object? total = freezed,
    Object? currentCount = freezed,
  }) {
    return _then(_$PagingImpl<T>(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      currentCount: freezed == currentCount
          ? _value.currentCount
          : currentCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$PagingImpl<T> extends _Paging<T> {
  const _$PagingImpl(
      {required final List<T> items,
      @JsonKey(name: 'totalCount') this.totalItems,
      this.total,
      this.currentCount})
      : _items = items,
        super._();

  factory _$PagingImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$PagingImplFromJson(json, fromJsonT);

  /// List of <T> items
  final List<T> _items;

  /// List of <T> items
  @override
  List<T> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Total item on server
  @override
  @JsonKey(name: 'totalCount')
  final int? totalItems;

  /// Total item on server when using for search service
  @override
  final int? total;

  /// Current item on this response
  @override
  final int? currentCount;

  @override
  String toString() {
    return 'Paging<$T>(items: $items, totalItems: $totalItems, total: $total, currentCount: $currentCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingImpl<T> &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currentCount, currentCount) ||
                other.currentCount == currentCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalItems,
      total,
      currentCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PagingImplCopyWith<T, _$PagingImpl<T>> get copyWith =>
      __$$PagingImplCopyWithImpl<T, _$PagingImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$PagingImplToJson<T>(this, toJsonT);
  }
}

abstract class _Paging<T> extends Paging<T> {
  const factory _Paging(
      {required final List<T> items,
      @JsonKey(name: 'totalCount') final int? totalItems,
      final int? total,
      final int? currentCount}) = _$PagingImpl<T>;
  const _Paging._() : super._();

  factory _Paging.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$PagingImpl<T>.fromJson;

  @override

  /// List of <T> items
  List<T> get items;
  @override

  /// Total item on server
  @JsonKey(name: 'totalCount')
  int? get totalItems;
  @override

  /// Total item on server when using for search service
  int? get total;
  @override

  /// Current item on this response
  int? get currentCount;
  @override
  @JsonKey(ignore: true)
  _$$PagingImplCopyWith<T, _$PagingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

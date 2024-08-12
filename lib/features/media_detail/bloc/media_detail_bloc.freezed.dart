// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaDetailEvent {
  int get id => throw _privateConstructorUsedError;
  String get heroTag => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String heroTag) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String heroTag)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String heroTag)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaDetailLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaDetailLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaDetailLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaDetailEventCopyWith<MediaDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDetailEventCopyWith<$Res> {
  factory $MediaDetailEventCopyWith(
          MediaDetailEvent value, $Res Function(MediaDetailEvent) then) =
      _$MediaDetailEventCopyWithImpl<$Res, MediaDetailEvent>;
  @useResult
  $Res call({int id, String heroTag});
}

/// @nodoc
class _$MediaDetailEventCopyWithImpl<$Res, $Val extends MediaDetailEvent>
    implements $MediaDetailEventCopyWith<$Res> {
  _$MediaDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? heroTag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaDetailLoadedImplCopyWith<$Res>
    implements $MediaDetailEventCopyWith<$Res> {
  factory _$$MediaDetailLoadedImplCopyWith(_$MediaDetailLoadedImpl value,
          $Res Function(_$MediaDetailLoadedImpl) then) =
      __$$MediaDetailLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String heroTag});
}

/// @nodoc
class __$$MediaDetailLoadedImplCopyWithImpl<$Res>
    extends _$MediaDetailEventCopyWithImpl<$Res, _$MediaDetailLoadedImpl>
    implements _$$MediaDetailLoadedImplCopyWith<$Res> {
  __$$MediaDetailLoadedImplCopyWithImpl(_$MediaDetailLoadedImpl _value,
      $Res Function(_$MediaDetailLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? heroTag = null,
  }) {
    return _then(_$MediaDetailLoadedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaDetailLoadedImpl implements MediaDetailLoaded {
  const _$MediaDetailLoadedImpl({required this.id, required this.heroTag});

  @override
  final int id;
  @override
  final String heroTag;

  @override
  String toString() {
    return 'MediaDetailEvent.loaded(id: $id, heroTag: $heroTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDetailLoadedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, heroTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDetailLoadedImplCopyWith<_$MediaDetailLoadedImpl> get copyWith =>
      __$$MediaDetailLoadedImplCopyWithImpl<_$MediaDetailLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, String heroTag) loaded,
  }) {
    return loaded(id, heroTag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, String heroTag)? loaded,
  }) {
    return loaded?.call(id, heroTag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, String heroTag)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(id, heroTag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaDetailLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaDetailLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaDetailLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MediaDetailLoaded implements MediaDetailEvent {
  const factory MediaDetailLoaded(
      {required final int id,
      required final String heroTag}) = _$MediaDetailLoadedImpl;

  @override
  int get id;
  @override
  String get heroTag;
  @override
  @JsonKey(ignore: true)
  _$$MediaDetailLoadedImplCopyWith<_$MediaDetailLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MediaDetailState {
  MediaDetailStatus get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  String get heroTag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaDetailStateCopyWith<MediaDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDetailStateCopyWith<$Res> {
  factory $MediaDetailStateCopyWith(
          MediaDetailState value, $Res Function(MediaDetailState) then) =
      _$MediaDetailStateCopyWithImpl<$Res, MediaDetailState>;
  @useResult
  $Res call(
      {MediaDetailStatus status,
      User user,
      String? errorMessage,
      bool isBusy,
      String heroTag});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MediaDetailStateCopyWithImpl<$Res, $Val extends MediaDetailState>
    implements $MediaDetailStateCopyWith<$Res> {
  _$MediaDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? errorMessage = freezed,
    Object? isBusy = null,
    Object? heroTag = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MediaDetailStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaDetailStateImplCopyWith<$Res>
    implements $MediaDetailStateCopyWith<$Res> {
  factory _$$MediaDetailStateImplCopyWith(_$MediaDetailStateImpl value,
          $Res Function(_$MediaDetailStateImpl) then) =
      __$$MediaDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MediaDetailStatus status,
      User user,
      String? errorMessage,
      bool isBusy,
      String heroTag});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$MediaDetailStateImplCopyWithImpl<$Res>
    extends _$MediaDetailStateCopyWithImpl<$Res, _$MediaDetailStateImpl>
    implements _$$MediaDetailStateImplCopyWith<$Res> {
  __$$MediaDetailStateImplCopyWithImpl(_$MediaDetailStateImpl _value,
      $Res Function(_$MediaDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
    Object? errorMessage = freezed,
    Object? isBusy = null,
    Object? heroTag = null,
  }) {
    return _then(_$MediaDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MediaDetailStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      heroTag: null == heroTag
          ? _value.heroTag
          : heroTag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaDetailStateImpl extends _MediaDetailState {
  const _$MediaDetailStateImpl(
      {this.status = MediaDetailStatus.initial,
      this.user = const User(),
      this.errorMessage,
      this.isBusy = false,
      this.heroTag = ''})
      : super._();

  @override
  @JsonKey()
  final MediaDetailStatus status;
  @override
  @JsonKey()
  final User user;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  @JsonKey()
  final String heroTag;

  @override
  String toString() {
    return 'MediaDetailState(status: $status, user: $user, errorMessage: $errorMessage, isBusy: $isBusy, heroTag: $heroTag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, user, errorMessage, isBusy, heroTag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaDetailStateImplCopyWith<_$MediaDetailStateImpl> get copyWith =>
      __$$MediaDetailStateImplCopyWithImpl<_$MediaDetailStateImpl>(
          this, _$identity);
}

abstract class _MediaDetailState extends MediaDetailState {
  const factory _MediaDetailState(
      {final MediaDetailStatus status,
      final User user,
      final String? errorMessage,
      final bool isBusy,
      final String heroTag}) = _$MediaDetailStateImpl;
  const _MediaDetailState._() : super._();

  @override
  MediaDetailStatus get status;
  @override
  User get user;
  @override
  String? get errorMessage;
  @override
  bool get isBusy;
  @override
  String get heroTag;
  @override
  @JsonKey(ignore: true)
  _$$MediaDetailStateImplCopyWith<_$MediaDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

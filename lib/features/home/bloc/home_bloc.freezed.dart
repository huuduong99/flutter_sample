// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AppNotification appNotification) viewDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AppNotification appNotification)? viewDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AppNotification appNotification)? viewDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeViewDetail value) viewDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeViewDetail value)? viewDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeViewDetail value)? viewDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadedImplCopyWith<$Res> {
  factory _$$HomeLoadedImplCopyWith(
          _$HomeLoadedImpl value, $Res Function(_$HomeLoadedImpl) then) =
      __$$HomeLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeLoadedImpl>
    implements _$$HomeLoadedImplCopyWith<$Res> {
  __$$HomeLoadedImplCopyWithImpl(
      _$HomeLoadedImpl _value, $Res Function(_$HomeLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadedImpl implements HomeLoaded {
  const _$HomeLoadedImpl();

  @override
  String toString() {
    return 'HomeEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AppNotification appNotification) viewDetail,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AppNotification appNotification)? viewDetail,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AppNotification appNotification)? viewDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeViewDetail value) viewDetail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeViewDetail value)? viewDetail,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeViewDetail value)? viewDetail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoaded implements HomeEvent {
  const factory HomeLoaded() = _$HomeLoadedImpl;
}

/// @nodoc
abstract class _$$HomeViewDetailImplCopyWith<$Res> {
  factory _$$HomeViewDetailImplCopyWith(_$HomeViewDetailImpl value,
          $Res Function(_$HomeViewDetailImpl) then) =
      __$$HomeViewDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppNotification appNotification});

  $AppNotificationCopyWith<$Res> get appNotification;
}

/// @nodoc
class __$$HomeViewDetailImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeViewDetailImpl>
    implements _$$HomeViewDetailImplCopyWith<$Res> {
  __$$HomeViewDetailImplCopyWithImpl(
      _$HomeViewDetailImpl _value, $Res Function(_$HomeViewDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appNotification = null,
  }) {
    return _then(_$HomeViewDetailImpl(
      appNotification: null == appNotification
          ? _value.appNotification
          : appNotification // ignore: cast_nullable_to_non_nullable
              as AppNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNotificationCopyWith<$Res> get appNotification {
    return $AppNotificationCopyWith<$Res>(_value.appNotification, (value) {
      return _then(_value.copyWith(appNotification: value));
    });
  }
}

/// @nodoc

class _$HomeViewDetailImpl implements HomeViewDetail {
  const _$HomeViewDetailImpl({required this.appNotification});

  @override
  final AppNotification appNotification;

  @override
  String toString() {
    return 'HomeEvent.viewDetail(appNotification: $appNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeViewDetailImpl &&
            (identical(other.appNotification, appNotification) ||
                other.appNotification == appNotification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeViewDetailImplCopyWith<_$HomeViewDetailImpl> get copyWith =>
      __$$HomeViewDetailImplCopyWithImpl<_$HomeViewDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AppNotification appNotification) viewDetail,
  }) {
    return viewDetail(appNotification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AppNotification appNotification)? viewDetail,
  }) {
    return viewDetail?.call(appNotification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AppNotification appNotification)? viewDetail,
    required TResult orElse(),
  }) {
    if (viewDetail != null) {
      return viewDetail(appNotification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeViewDetail value) viewDetail,
  }) {
    return viewDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeViewDetail value)? viewDetail,
  }) {
    return viewDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeViewDetail value)? viewDetail,
    required TResult orElse(),
  }) {
    if (viewDetail != null) {
      return viewDetail(this);
    }
    return orElse();
  }
}

abstract class HomeViewDetail implements HomeEvent {
  const factory HomeViewDetail(
      {required final AppNotification appNotification}) = _$HomeViewDetailImpl;

  AppNotification get appNotification;
  @JsonKey(ignore: true)
  _$$HomeViewDetailImplCopyWith<_$HomeViewDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  int get tabIndex => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  HomeHandle? get handle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {HomeStatus status,
      List<User> users,
      String? errorMessage,
      int tabIndex,
      bool isBusy,
      HomeHandle? handle});

  $HomeHandleCopyWith<$Res>? get handle;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? errorMessage = freezed,
    Object? tabIndex = null,
    Object? isBusy = null,
    Object? handle = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      handle: freezed == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as HomeHandle?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeHandleCopyWith<$Res>? get handle {
    if (_value.handle == null) {
      return null;
    }

    return $HomeHandleCopyWith<$Res>(_value.handle!, (value) {
      return _then(_value.copyWith(handle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeStatus status,
      List<User> users,
      String? errorMessage,
      int tabIndex,
      bool isBusy,
      HomeHandle? handle});

  @override
  $HomeHandleCopyWith<$Res>? get handle;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? errorMessage = freezed,
    Object? tabIndex = null,
    Object? isBusy = null,
    Object? handle = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      handle: freezed == handle
          ? _value.handle
          : handle // ignore: cast_nullable_to_non_nullable
              as HomeHandle?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.status = HomeStatus.initial,
      final List<User> users = const [],
      this.errorMessage,
      this.tabIndex = 0,
      this.isBusy = false,
      this.handle})
      : _users = users,
        super._();

  @override
  @JsonKey()
  final HomeStatus status;
  final List<User> _users;
  @override
  @JsonKey()
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final int tabIndex;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  final HomeHandle? handle;

  @override
  String toString() {
    return 'HomeState(status: $status, users: $users, errorMessage: $errorMessage, tabIndex: $tabIndex, isBusy: $isBusy, handle: $handle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.handle, handle) || other.handle == handle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_users),
      errorMessage,
      tabIndex,
      isBusy,
      handle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final HomeStatus status,
      final List<User> users,
      final String? errorMessage,
      final int tabIndex,
      final bool isBusy,
      final HomeHandle? handle}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  HomeStatus get status;
  @override
  List<User> get users;
  @override
  String? get errorMessage;
  @override
  int get tabIndex;
  @override
  bool get isBusy;
  @override
  HomeHandle? get handle;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeHandle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) viewDetail,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? viewDetail,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? viewDetail,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeHandleViewDetail value) viewDetail,
    required TResult Function(_HomeHandleFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeHandleViewDetail value)? viewDetail,
    TResult? Function(_HomeHandleFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeHandleViewDetail value)? viewDetail,
    TResult Function(_HomeHandleFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeHandleCopyWith<$Res> {
  factory $HomeHandleCopyWith(
          HomeHandle value, $Res Function(HomeHandle) then) =
      _$HomeHandleCopyWithImpl<$Res, HomeHandle>;
}

/// @nodoc
class _$HomeHandleCopyWithImpl<$Res, $Val extends HomeHandle>
    implements $HomeHandleCopyWith<$Res> {
  _$HomeHandleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeHandleViewDetailImplCopyWith<$Res> {
  factory _$$HomeHandleViewDetailImplCopyWith(_$HomeHandleViewDetailImpl value,
          $Res Function(_$HomeHandleViewDetailImpl) then) =
      __$$HomeHandleViewDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$HomeHandleViewDetailImplCopyWithImpl<$Res>
    extends _$HomeHandleCopyWithImpl<$Res, _$HomeHandleViewDetailImpl>
    implements _$$HomeHandleViewDetailImplCopyWith<$Res> {
  __$$HomeHandleViewDetailImplCopyWithImpl(_$HomeHandleViewDetailImpl _value,
      $Res Function(_$HomeHandleViewDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$HomeHandleViewDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeHandleViewDetailImpl implements _HomeHandleViewDetail {
  _$HomeHandleViewDetailImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeHandle.viewDetail(id: $id)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeHandleViewDetailImplCopyWith<_$HomeHandleViewDetailImpl>
      get copyWith =>
          __$$HomeHandleViewDetailImplCopyWithImpl<_$HomeHandleViewDetailImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) viewDetail,
    required TResult Function(String message) failure,
  }) {
    return viewDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? viewDetail,
    TResult? Function(String message)? failure,
  }) {
    return viewDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? viewDetail,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (viewDetail != null) {
      return viewDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeHandleViewDetail value) viewDetail,
    required TResult Function(_HomeHandleFailure value) failure,
  }) {
    return viewDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeHandleViewDetail value)? viewDetail,
    TResult? Function(_HomeHandleFailure value)? failure,
  }) {
    return viewDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeHandleViewDetail value)? viewDetail,
    TResult Function(_HomeHandleFailure value)? failure,
    required TResult orElse(),
  }) {
    if (viewDetail != null) {
      return viewDetail(this);
    }
    return orElse();
  }
}

abstract class _HomeHandleViewDetail implements HomeHandle {
  factory _HomeHandleViewDetail({required final int id}) =
      _$HomeHandleViewDetailImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$HomeHandleViewDetailImplCopyWith<_$HomeHandleViewDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeHandleFailureImplCopyWith<$Res> {
  factory _$$HomeHandleFailureImplCopyWith(_$HomeHandleFailureImpl value,
          $Res Function(_$HomeHandleFailureImpl) then) =
      __$$HomeHandleFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeHandleFailureImplCopyWithImpl<$Res>
    extends _$HomeHandleCopyWithImpl<$Res, _$HomeHandleFailureImpl>
    implements _$$HomeHandleFailureImplCopyWith<$Res> {
  __$$HomeHandleFailureImplCopyWithImpl(_$HomeHandleFailureImpl _value,
      $Res Function(_$HomeHandleFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeHandleFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeHandleFailureImpl implements _HomeHandleFailure {
  _$HomeHandleFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeHandle.failure(message: $message)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeHandleFailureImplCopyWith<_$HomeHandleFailureImpl> get copyWith =>
      __$$HomeHandleFailureImplCopyWithImpl<_$HomeHandleFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) viewDetail,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? viewDetail,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? viewDetail,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeHandleViewDetail value) viewDetail,
    required TResult Function(_HomeHandleFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeHandleViewDetail value)? viewDetail,
    TResult? Function(_HomeHandleFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeHandleViewDetail value)? viewDetail,
    TResult Function(_HomeHandleFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _HomeHandleFailure implements HomeHandle {
  factory _HomeHandleFailure({required final String message}) =
      _$HomeHandleFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HomeHandleFailureImplCopyWith<_$HomeHandleFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

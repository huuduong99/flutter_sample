// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() logoutRequested,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool isDarkMode) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? logoutRequested,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool isDarkMode)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? logoutRequested,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool isDarkMode)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLogoutRequested value) logoutRequested,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApplicationLoadedImplCopyWith<$Res> {
  factory _$$ApplicationLoadedImplCopyWith(_$ApplicationLoadedImpl value,
          $Res Function(_$ApplicationLoadedImpl) then) =
      __$$ApplicationLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationLoadedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationLoadedImpl>
    implements _$$ApplicationLoadedImplCopyWith<$Res> {
  __$$ApplicationLoadedImplCopyWithImpl(_$ApplicationLoadedImpl _value,
      $Res Function(_$ApplicationLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationLoadedImpl implements ApplicationLoaded {
  _$ApplicationLoadedImpl();

  @override
  String toString() {
    return 'ApplicationEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ApplicationLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() logoutRequested,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool isDarkMode) themeChanged,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? logoutRequested,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool isDarkMode)? themeChanged,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? logoutRequested,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool isDarkMode)? themeChanged,
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
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLogoutRequested value) logoutRequested,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationThemeChanged value) themeChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationThemeChanged value)? themeChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ApplicationLoaded implements ApplicationEvent {
  factory ApplicationLoaded() = _$ApplicationLoadedImpl;
}

/// @nodoc
abstract class _$$ApplicationLogoutRequestedImplCopyWith<$Res> {
  factory _$$ApplicationLogoutRequestedImplCopyWith(
          _$ApplicationLogoutRequestedImpl value,
          $Res Function(_$ApplicationLogoutRequestedImpl) then) =
      __$$ApplicationLogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationLogoutRequestedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res,
        _$ApplicationLogoutRequestedImpl>
    implements _$$ApplicationLogoutRequestedImplCopyWith<$Res> {
  __$$ApplicationLogoutRequestedImplCopyWithImpl(
      _$ApplicationLogoutRequestedImpl _value,
      $Res Function(_$ApplicationLogoutRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationLogoutRequestedImpl implements ApplicationLogoutRequested {
  _$ApplicationLogoutRequestedImpl();

  @override
  String toString() {
    return 'ApplicationEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() logoutRequested,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool isDarkMode) themeChanged,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? logoutRequested,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool isDarkMode)? themeChanged,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? logoutRequested,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool isDarkMode)? themeChanged,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLogoutRequested value) logoutRequested,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationThemeChanged value) themeChanged,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationThemeChanged value)? themeChanged,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class ApplicationLogoutRequested implements ApplicationEvent {
  factory ApplicationLogoutRequested() = _$ApplicationLogoutRequestedImpl;
}

/// @nodoc
abstract class _$$ApplicationLocaleChangedImplCopyWith<$Res> {
  factory _$$ApplicationLocaleChangedImplCopyWith(
          _$ApplicationLocaleChangedImpl value,
          $Res Function(_$ApplicationLocaleChangedImpl) then) =
      __$$ApplicationLocaleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String locale});
}

/// @nodoc
class __$$ApplicationLocaleChangedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationLocaleChangedImpl>
    implements _$$ApplicationLocaleChangedImplCopyWith<$Res> {
  __$$ApplicationLocaleChangedImplCopyWithImpl(
      _$ApplicationLocaleChangedImpl _value,
      $Res Function(_$ApplicationLocaleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ApplicationLocaleChangedImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplicationLocaleChangedImpl implements ApplicationLocaleChanged {
  _$ApplicationLocaleChangedImpl({required this.locale});

  @override
  final String locale;

  @override
  String toString() {
    return 'ApplicationEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLocaleChangedImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationLocaleChangedImplCopyWith<_$ApplicationLocaleChangedImpl>
      get copyWith => __$$ApplicationLocaleChangedImplCopyWithImpl<
          _$ApplicationLocaleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() logoutRequested,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool isDarkMode) themeChanged,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? logoutRequested,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool isDarkMode)? themeChanged,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? logoutRequested,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool isDarkMode)? themeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLogoutRequested value) logoutRequested,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationThemeChanged value) themeChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationThemeChanged value)? themeChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationLocaleChanged implements ApplicationEvent {
  factory ApplicationLocaleChanged({required final String locale}) =
      _$ApplicationLocaleChangedImpl;

  String get locale;
  @JsonKey(ignore: true)
  _$$ApplicationLocaleChangedImplCopyWith<_$ApplicationLocaleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApplicationThemeChangedImplCopyWith<$Res> {
  factory _$$ApplicationThemeChangedImplCopyWith(
          _$ApplicationThemeChangedImpl value,
          $Res Function(_$ApplicationThemeChangedImpl) then) =
      __$$ApplicationThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$ApplicationThemeChangedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$ApplicationThemeChangedImpl>
    implements _$$ApplicationThemeChangedImplCopyWith<$Res> {
  __$$ApplicationThemeChangedImplCopyWithImpl(
      _$ApplicationThemeChangedImpl _value,
      $Res Function(_$ApplicationThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$ApplicationThemeChangedImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApplicationThemeChangedImpl implements ApplicationThemeChanged {
  _$ApplicationThemeChangedImpl({required this.isDarkMode});

  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'ApplicationEvent.themeChanged(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationThemeChangedImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationThemeChangedImplCopyWith<_$ApplicationThemeChangedImpl>
      get copyWith => __$$ApplicationThemeChangedImplCopyWithImpl<
          _$ApplicationThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() logoutRequested,
    required TResult Function(String locale) localeChanged,
    required TResult Function(bool isDarkMode) themeChanged,
  }) {
    return themeChanged(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? logoutRequested,
    TResult? Function(String locale)? localeChanged,
    TResult? Function(bool isDarkMode)? themeChanged,
  }) {
    return themeChanged?.call(isDarkMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? logoutRequested,
    TResult Function(String locale)? localeChanged,
    TResult Function(bool isDarkMode)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(isDarkMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApplicationLoaded value) loaded,
    required TResult Function(ApplicationLogoutRequested value) logoutRequested,
    required TResult Function(ApplicationLocaleChanged value) localeChanged,
    required TResult Function(ApplicationThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApplicationLoaded value)? loaded,
    TResult? Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult? Function(ApplicationLocaleChanged value)? localeChanged,
    TResult? Function(ApplicationThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApplicationLoaded value)? loaded,
    TResult Function(ApplicationLogoutRequested value)? logoutRequested,
    TResult Function(ApplicationLocaleChanged value)? localeChanged,
    TResult Function(ApplicationThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationThemeChanged implements ApplicationEvent {
  factory ApplicationThemeChanged({required final bool isDarkMode}) =
      _$ApplicationThemeChangedImpl;

  bool get isDarkMode;
  @JsonKey(ignore: true)
  _$$ApplicationThemeChangedImplCopyWith<_$ApplicationThemeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  PageStatus get status => throw _privateConstructorUsedError;
  dynamic get isAuthenticated => throw _privateConstructorUsedError;
  String get locale => throw _privateConstructorUsedError;
  ApplicationHandle? get applicationHandle =>
      throw _privateConstructorUsedError;
  dynamic get isDarkMode => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {PageStatus status,
      dynamic isAuthenticated,
      String locale,
      ApplicationHandle? applicationHandle,
      dynamic isDarkMode,
      User user});

  $PageStatusCopyWith<$Res> get status;
  $ApplicationHandleCopyWith<$Res>? get applicationHandle;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthenticated = freezed,
    Object? locale = null,
    Object? applicationHandle = freezed,
    Object? isDarkMode = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      applicationHandle: freezed == applicationHandle
          ? _value.applicationHandle
          : applicationHandle // ignore: cast_nullable_to_non_nullable
              as ApplicationHandle?,
      isDarkMode: freezed == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageStatusCopyWith<$Res> get status {
    return $PageStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicationHandleCopyWith<$Res>? get applicationHandle {
    if (_value.applicationHandle == null) {
      return null;
    }

    return $ApplicationHandleCopyWith<$Res>(_value.applicationHandle!, (value) {
      return _then(_value.copyWith(applicationHandle: value) as $Val);
    });
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
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(_$ApplicationStateImpl value,
          $Res Function(_$ApplicationStateImpl) then) =
      __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PageStatus status,
      dynamic isAuthenticated,
      String locale,
      ApplicationHandle? applicationHandle,
      dynamic isDarkMode,
      User user});

  @override
  $PageStatusCopyWith<$Res> get status;
  @override
  $ApplicationHandleCopyWith<$Res>? get applicationHandle;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(_$ApplicationStateImpl _value,
      $Res Function(_$ApplicationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isAuthenticated = freezed,
    Object? locale = null,
    Object? applicationHandle = freezed,
    Object? isDarkMode = freezed,
    Object? user = null,
  }) {
    return _then(_$ApplicationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      isAuthenticated: freezed == isAuthenticated
          ? _value.isAuthenticated!
          : isAuthenticated,
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      applicationHandle: freezed == applicationHandle
          ? _value.applicationHandle
          : applicationHandle // ignore: cast_nullable_to_non_nullable
              as ApplicationHandle?,
      isDarkMode: freezed == isDarkMode ? _value.isDarkMode! : isDarkMode,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$ApplicationStateImpl implements _ApplicationState {
  const _$ApplicationStateImpl(
      {this.status = const PageStatus.initial(),
      this.isAuthenticated = false,
      this.locale = 'vi',
      this.applicationHandle,
      this.isDarkMode = false,
      this.user = const User()});

  @override
  @JsonKey()
  final PageStatus status;
  @override
  @JsonKey()
  final dynamic isAuthenticated;
  @override
  @JsonKey()
  final String locale;
  @override
  final ApplicationHandle? applicationHandle;
  @override
  @JsonKey()
  final dynamic isDarkMode;
  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'ApplicationState(status: $status, isAuthenticated: $isAuthenticated, locale: $locale, applicationHandle: $applicationHandle, isDarkMode: $isDarkMode, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.isAuthenticated, isAuthenticated) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.applicationHandle, applicationHandle) ||
                other.applicationHandle == applicationHandle) &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(isAuthenticated),
      locale,
      applicationHandle,
      const DeepCollectionEquality().hash(isDarkMode),
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
          this, _$identity);
}

abstract class _ApplicationState implements ApplicationState {
  const factory _ApplicationState(
      {final PageStatus status,
      final dynamic isAuthenticated,
      final String locale,
      final ApplicationHandle? applicationHandle,
      final dynamic isDarkMode,
      final User user}) = _$ApplicationStateImpl;

  @override
  PageStatus get status;
  @override
  dynamic get isAuthenticated;
  @override
  String get locale;
  @override
  ApplicationHandle? get applicationHandle;
  @override
  dynamic get isDarkMode;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationHandle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationHandleCopyWith<$Res> {
  factory $ApplicationHandleCopyWith(
          ApplicationHandle value, $Res Function(ApplicationHandle) then) =
      _$ApplicationHandleCopyWithImpl<$Res, ApplicationHandle>;
}

/// @nodoc
class _$ApplicationHandleCopyWithImpl<$Res, $Val extends ApplicationHandle>
    implements $ApplicationHandleCopyWith<$Res> {
  _$ApplicationHandleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApplicationLogoutImplCopyWith<$Res> {
  factory _$$ApplicationLogoutImplCopyWith(_$ApplicationLogoutImpl value,
          $Res Function(_$ApplicationLogoutImpl) then) =
      __$$ApplicationLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApplicationLogoutImplCopyWithImpl<$Res>
    extends _$ApplicationHandleCopyWithImpl<$Res, _$ApplicationLogoutImpl>
    implements _$$ApplicationLogoutImplCopyWith<$Res> {
  __$$ApplicationLogoutImplCopyWithImpl(_$ApplicationLogoutImpl _value,
      $Res Function(_$ApplicationLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApplicationLogoutImpl implements _ApplicationLogout {
  _$ApplicationLogoutImpl();

  @override
  String toString() {
    return 'ApplicationHandle.logout()';
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApplicationLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApplicationLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApplicationLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _ApplicationLogout implements ApplicationHandle {
  factory _ApplicationLogout() = _$ApplicationLogoutImpl;
}

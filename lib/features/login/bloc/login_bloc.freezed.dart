// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String email, String password) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginEmailChangedImplCopyWith<$Res> {
  factory _$$LoginEmailChangedImplCopyWith(_$LoginEmailChangedImpl value,
          $Res Function(_$LoginEmailChangedImpl) then) =
      __$$LoginEmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$LoginEmailChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEmailChangedImpl>
    implements _$$LoginEmailChangedImplCopyWith<$Res> {
  __$$LoginEmailChangedImplCopyWithImpl(_$LoginEmailChangedImpl _value,
      $Res Function(_$LoginEmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$LoginEmailChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEmailChangedImpl
    with DiagnosticableTreeMixin
    implements LoginEmailChanged {
  const _$LoginEmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.emailChanged(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.emailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEmailChangedImplCopyWith<_$LoginEmailChangedImpl> get copyWith =>
      __$$LoginEmailChangedImplCopyWithImpl<_$LoginEmailChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class LoginEmailChanged implements LoginEvent {
  const factory LoginEmailChanged({required final String email}) =
      _$LoginEmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$LoginEmailChangedImplCopyWith<_$LoginEmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginPasswordChangedImplCopyWith<$Res> {
  factory _$$LoginPasswordChangedImplCopyWith(_$LoginPasswordChangedImpl value,
          $Res Function(_$LoginPasswordChangedImpl) then) =
      __$$LoginPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$LoginPasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginPasswordChangedImpl>
    implements _$$LoginPasswordChangedImplCopyWith<$Res> {
  __$$LoginPasswordChangedImplCopyWithImpl(_$LoginPasswordChangedImpl _value,
      $Res Function(_$LoginPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$LoginPasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginPasswordChangedImpl
    with DiagnosticableTreeMixin
    implements LoginPasswordChanged {
  const _$LoginPasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.passwordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith =>
          __$$LoginPasswordChangedImplCopyWithImpl<_$LoginPasswordChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class LoginPasswordChanged implements LoginEvent {
  const factory LoginPasswordChanged({required final String password}) =
      _$LoginPasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$LoginPasswordChangedImplCopyWith<_$LoginPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(_$LoginButtonPressedImpl value,
          $Res Function(_$LoginButtonPressedImpl) then) =
      __$$LoginButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(_$LoginButtonPressedImpl _value,
      $Res Function(_$LoginButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginButtonPressedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginButtonPressedImpl
    with DiagnosticableTreeMixin
    implements LoginButtonPressed {
  const _$LoginButtonPressedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginButtonPressed(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.loginButtonPressed'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      __$$LoginButtonPressedImplCopyWithImpl<_$LoginButtonPressedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String email, String password) loginButtonPressed,
  }) {
    return loginButtonPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String email, String password)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String email, String password)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEmailChanged value) emailChanged,
    required TResult Function(LoginPasswordChanged value) passwordChanged,
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEmailChanged value)? emailChanged,
    TResult? Function(LoginPasswordChanged value)? passwordChanged,
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEmailChanged value)? emailChanged,
    TResult Function(LoginPasswordChanged value)? passwordChanged,
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LoginButtonPressed implements LoginEvent {
  const factory LoginButtonPressed(
      {required final String email,
      required final String password}) = _$LoginButtonPressedImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  LoginStatus get status => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isBusy => throw _privateConstructorUsedError;
  LoginHandle? get loginHandle => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get errorEmail => throw _privateConstructorUsedError;
  String? get errorPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatus status,
      String email,
      String password,
      bool isBusy,
      LoginHandle? loginHandle,
      String? errorMessage,
      String? errorEmail,
      String? errorPassword});

  $LoginHandleCopyWith<$Res>? get loginHandle;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? isBusy = null,
    Object? loginHandle = freezed,
    Object? errorMessage = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      loginHandle: freezed == loginHandle
          ? _value.loginHandle
          : loginHandle // ignore: cast_nullable_to_non_nullable
              as LoginHandle?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorEmail: freezed == errorEmail
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginHandleCopyWith<$Res>? get loginHandle {
    if (_value.loginHandle == null) {
      return null;
    }

    return $LoginHandleCopyWith<$Res>(_value.loginHandle!, (value) {
      return _then(_value.copyWith(loginHandle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatus status,
      String email,
      String password,
      bool isBusy,
      LoginHandle? loginHandle,
      String? errorMessage,
      String? errorEmail,
      String? errorPassword});

  @override
  $LoginHandleCopyWith<$Res>? get loginHandle;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
    Object? isBusy = null,
    Object? loginHandle = freezed,
    Object? errorMessage = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isBusy: null == isBusy
          ? _value.isBusy
          : isBusy // ignore: cast_nullable_to_non_nullable
              as bool,
      loginHandle: freezed == loginHandle
          ? _value.loginHandle
          : loginHandle // ignore: cast_nullable_to_non_nullable
              as LoginHandle?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      errorEmail: freezed == errorEmail
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      errorPassword: freezed == errorPassword
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState with DiagnosticableTreeMixin {
  const _$LoginStateImpl(
      {this.status = LoginStatus.initial,
      this.email = '',
      this.password = '',
      this.isBusy = false,
      this.loginHandle,
      this.errorMessage,
      this.errorEmail,
      this.errorPassword})
      : super._();

  @override
  @JsonKey()
  final LoginStatus status;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isBusy;
  @override
  final LoginHandle? loginHandle;
  @override
  final String? errorMessage;
  @override
  final String? errorEmail;
  @override
  final String? errorPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(status: $status, email: $email, password: $password, isBusy: $isBusy, loginHandle: $loginHandle, errorMessage: $errorMessage, errorEmail: $errorEmail, errorPassword: $errorPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isBusy', isBusy))
      ..add(DiagnosticsProperty('loginHandle', loginHandle))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('errorEmail', errorEmail))
      ..add(DiagnosticsProperty('errorPassword', errorPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isBusy, isBusy) || other.isBusy == isBusy) &&
            (identical(other.loginHandle, loginHandle) ||
                other.loginHandle == loginHandle) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.errorEmail, errorEmail) ||
                other.errorEmail == errorEmail) &&
            (identical(other.errorPassword, errorPassword) ||
                other.errorPassword == errorPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, password, isBusy,
      loginHandle, errorMessage, errorEmail, errorPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final LoginStatus status,
      final String email,
      final String password,
      final bool isBusy,
      final LoginHandle? loginHandle,
      final String? errorMessage,
      final String? errorEmail,
      final String? errorPassword}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  LoginStatus get status;
  @override
  String get email;
  @override
  String get password;
  @override
  bool get isBusy;
  @override
  LoginHandle? get loginHandle;
  @override
  String? get errorMessage;
  @override
  String? get errorEmail;
  @override
  String? get errorPassword;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginHandle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHandleLoginSuccess value) loginSuccess,
    required TResult Function(_LoginHandleLoginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult? Function(_LoginHandleLoginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult Function(_LoginHandleLoginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginHandleCopyWith<$Res> {
  factory $LoginHandleCopyWith(
          LoginHandle value, $Res Function(LoginHandle) then) =
      _$LoginHandleCopyWithImpl<$Res, LoginHandle>;
}

/// @nodoc
class _$LoginHandleCopyWithImpl<$Res, $Val extends LoginHandle>
    implements $LoginHandleCopyWith<$Res> {
  _$LoginHandleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginHandleLoginSuccessImplCopyWith<$Res> {
  factory _$$LoginHandleLoginSuccessImplCopyWith(
          _$LoginHandleLoginSuccessImpl value,
          $Res Function(_$LoginHandleLoginSuccessImpl) then) =
      __$$LoginHandleLoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginHandleLoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginHandleCopyWithImpl<$Res, _$LoginHandleLoginSuccessImpl>
    implements _$$LoginHandleLoginSuccessImplCopyWith<$Res> {
  __$$LoginHandleLoginSuccessImplCopyWithImpl(
      _$LoginHandleLoginSuccessImpl _value,
      $Res Function(_$LoginHandleLoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginHandleLoginSuccessImpl
    with DiagnosticableTreeMixin
    implements _LoginHandleLoginSuccess {
  _$LoginHandleLoginSuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginHandle.loginSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginHandle.loginSuccess'));
  }

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHandleLoginSuccess value) loginSuccess,
    required TResult Function(_LoginHandleLoginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult? Function(_LoginHandleLoginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult Function(_LoginHandleLoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginHandleLoginSuccess implements LoginHandle {
  factory _LoginHandleLoginSuccess() = _$LoginHandleLoginSuccessImpl;
}

/// @nodoc
abstract class _$$LoginHandleLoginFailureImplCopyWith<$Res> {
  factory _$$LoginHandleLoginFailureImplCopyWith(
          _$LoginHandleLoginFailureImpl value,
          $Res Function(_$LoginHandleLoginFailureImpl) then) =
      __$$LoginHandleLoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginHandleLoginFailureImplCopyWithImpl<$Res>
    extends _$LoginHandleCopyWithImpl<$Res, _$LoginHandleLoginFailureImpl>
    implements _$$LoginHandleLoginFailureImplCopyWith<$Res> {
  __$$LoginHandleLoginFailureImplCopyWithImpl(
      _$LoginHandleLoginFailureImpl _value,
      $Res Function(_$LoginHandleLoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginHandleLoginFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginHandleLoginFailureImpl
    with DiagnosticableTreeMixin
    implements _LoginHandleLoginFailure {
  _$LoginHandleLoginFailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginHandle.loginFailure(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginHandle.loginFailure'))
      ..add(DiagnosticsProperty('message', message));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginHandleLoginFailureImplCopyWith<_$LoginHandleLoginFailureImpl>
      get copyWith => __$$LoginHandleLoginFailureImplCopyWithImpl<
          _$LoginHandleLoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loginSuccess,
    required TResult Function(String message) loginFailure,
  }) {
    return loginFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loginSuccess,
    TResult? Function(String message)? loginFailure,
  }) {
    return loginFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loginSuccess,
    TResult Function(String message)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginHandleLoginSuccess value) loginSuccess,
    required TResult Function(_LoginHandleLoginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult? Function(_LoginHandleLoginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginHandleLoginSuccess value)? loginSuccess,
    TResult Function(_LoginHandleLoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginHandleLoginFailure implements LoginHandle {
  factory _LoginHandleLoginFailure({required final String message}) =
      _$LoginHandleLoginFailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginHandleLoginFailureImplCopyWith<_$LoginHandleLoginFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

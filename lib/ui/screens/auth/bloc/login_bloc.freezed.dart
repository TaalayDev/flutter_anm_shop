// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Login get login => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, Login login, Password password});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, Login login, Password password});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, (v) => _then(v as _$_LoginState));

  @override
  _$_LoginState get _value => super._value as _$_LoginState;

  @override
  $Res call({
    Object? status = freezed,
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_LoginState with DiagnosticableTreeMixin implements _LoginState {
  const _$_LoginState(
      {this.status = FormzStatus.pure,
      this.login = const Login.pure(),
      this.password = const Password.pure()});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final Login login;
  @override
  @JsonKey()
  final Password password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginState(status: $status, login: $login, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('login', login))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final FormzStatus status,
      final Login login,
      final Password password}) = _$_LoginState;

  @override
  FormzStatus get status;
  @override
  Login get login;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) loginChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginChangedEvent value) loginChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(LoginAttemptEvent value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$LoginChangedEventCopyWith<$Res> {
  factory _$$LoginChangedEventCopyWith(
          _$LoginChangedEvent value, $Res Function(_$LoginChangedEvent) then) =
      __$$LoginChangedEventCopyWithImpl<$Res>;
  $Res call({String login});
}

/// @nodoc
class __$$LoginChangedEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginChangedEventCopyWith<$Res> {
  __$$LoginChangedEventCopyWithImpl(
      _$LoginChangedEvent _value, $Res Function(_$LoginChangedEvent) _then)
      : super(_value, (v) => _then(v as _$LoginChangedEvent));

  @override
  _$LoginChangedEvent get _value => super._value as _$LoginChangedEvent;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_$LoginChangedEvent(
      login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginChangedEvent
    with DiagnosticableTreeMixin
    implements LoginChangedEvent {
  const _$LoginChangedEvent(this.login);

  @override
  final String login;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.loginChanged(login: $login)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LoginEvent.loginChanged'))
      ..add(DiagnosticsProperty('login', login));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginChangedEvent &&
            const DeepCollectionEquality().equals(other.login, login));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(login));

  @JsonKey(ignore: true)
  @override
  _$$LoginChangedEventCopyWith<_$LoginChangedEvent> get copyWith =>
      __$$LoginChangedEventCopyWithImpl<_$LoginChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) loginChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() login,
  }) {
    return loginChanged(this.login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
  }) {
    return loginChanged?.call(this.login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (loginChanged != null) {
      return loginChanged(this.login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginChangedEvent value) loginChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(LoginAttemptEvent value) login,
  }) {
    return loginChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
  }) {
    return loginChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
    required TResult orElse(),
  }) {
    if (loginChanged != null) {
      return loginChanged(this);
    }
    return orElse();
  }
}

abstract class LoginChangedEvent implements LoginEvent {
  const factory LoginChangedEvent(final String login) = _$LoginChangedEvent;

  String get login;
  @JsonKey(ignore: true)
  _$$LoginChangedEventCopyWith<_$LoginChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedEventCopyWith<$Res> {
  factory _$$PasswordChangedEventCopyWith(_$PasswordChangedEvent value,
          $Res Function(_$PasswordChangedEvent) then) =
      __$$PasswordChangedEventCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$PasswordChangedEventCopyWith<$Res> {
  __$$PasswordChangedEventCopyWithImpl(_$PasswordChangedEvent _value,
      $Res Function(_$PasswordChangedEvent) _then)
      : super(_value, (v) => _then(v as _$PasswordChangedEvent));

  @override
  _$PasswordChangedEvent get _value => super._value as _$PasswordChangedEvent;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$PasswordChangedEvent(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedEvent
    with DiagnosticableTreeMixin
    implements PasswordChangedEvent {
  const _$PasswordChangedEvent(this.password);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedEvent &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      __$$PasswordChangedEventCopyWithImpl<_$PasswordChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) loginChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() login,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
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
    required TResult Function(LoginChangedEvent value) loginChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(LoginAttemptEvent value) login,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEvent implements LoginEvent {
  const factory PasswordChangedEvent(final String password) =
      _$PasswordChangedEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAttemptEventCopyWith<$Res> {
  factory _$$LoginAttemptEventCopyWith(
          _$LoginAttemptEvent value, $Res Function(_$LoginAttemptEvent) then) =
      __$$LoginAttemptEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginAttemptEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginAttemptEventCopyWith<$Res> {
  __$$LoginAttemptEventCopyWithImpl(
      _$LoginAttemptEvent _value, $Res Function(_$LoginAttemptEvent) _then)
      : super(_value, (v) => _then(v as _$LoginAttemptEvent));

  @override
  _$LoginAttemptEvent get _value => super._value as _$LoginAttemptEvent;
}

/// @nodoc

class _$LoginAttemptEvent
    with DiagnosticableTreeMixin
    implements LoginAttemptEvent {
  const _$LoginAttemptEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LoginEvent.login()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LoginEvent.login'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginAttemptEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login) loginChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login)? loginChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginChangedEvent value) loginChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(LoginAttemptEvent value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginChangedEvent value)? loginChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(LoginAttemptEvent value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginAttemptEvent implements LoginEvent {
  const factory LoginAttemptEvent() = _$LoginAttemptEvent;
}

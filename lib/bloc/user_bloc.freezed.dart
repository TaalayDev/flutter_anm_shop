// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  bool get isLogin => throw _privateConstructorUsedError;
  bool get isFetchingUser => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({bool isLogin, bool isFetchingUser, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object? isLogin = freezed,
    Object? isFetchingUser = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingUser: isFetchingUser == freezed
          ? _value.isFetchingUser
          : isFetchingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLogin, bool isFetchingUser, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, (v) => _then(v as _$_UserState));

  @override
  _$_UserState get _value => super._value as _$_UserState;

  @override
  $Res call({
    Object? isLogin = freezed,
    Object? isFetchingUser = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_UserState(
      isLogin: isLogin == freezed
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingUser: isFetchingUser == freezed
          ? _value.isFetchingUser
          : isFetchingUser // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_UserState with DiagnosticableTreeMixin implements _UserState {
  const _$_UserState(
      {this.isLogin = false, this.isFetchingUser = false, this.user});

  @override
  @JsonKey()
  final bool isLogin;
  @override
  @JsonKey()
  final bool isFetchingUser;
  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(isLogin: $isLogin, isFetchingUser: $isFetchingUser, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('isLogin', isLogin))
      ..add(DiagnosticsProperty('isFetchingUser', isFetchingUser))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            const DeepCollectionEquality().equals(other.isLogin, isLogin) &&
            const DeepCollectionEquality()
                .equals(other.isFetchingUser, isFetchingUser) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLogin),
      const DeepCollectionEquality().hash(isFetchingUser),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final bool isLogin,
      final bool isFetchingUser,
      final User? user}) = _$_UserState;

  @override
  bool get isLogin;
  @override
  bool get isFetchingUser;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() logout,
    required TResult Function() fetchDetails,
    required TResult Function(User user) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserFetchDetailsEvent value) fetchDetails,
    required TResult Function(UserChangedEvent value) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$$UserLoginEventCopyWith<$Res> {
  factory _$$UserLoginEventCopyWith(
          _$UserLoginEvent value, $Res Function(_$UserLoginEvent) then) =
      __$$UserLoginEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoginEventCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$$UserLoginEventCopyWith<$Res> {
  __$$UserLoginEventCopyWithImpl(
      _$UserLoginEvent _value, $Res Function(_$UserLoginEvent) _then)
      : super(_value, (v) => _then(v as _$UserLoginEvent));

  @override
  _$UserLoginEvent get _value => super._value as _$UserLoginEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserLoginEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoginEvent with DiagnosticableTreeMixin implements UserLoginEvent {
  const _$UserLoginEvent(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.login(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.login'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserLoginEventCopyWith<_$UserLoginEvent> get copyWith =>
      __$$UserLoginEventCopyWithImpl<_$UserLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() logout,
    required TResult Function() fetchDetails,
    required TResult Function(User user) userChanged,
  }) {
    return login(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
  }) {
    return login?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserFetchDetailsEvent value) fetchDetails,
    required TResult Function(UserChangedEvent value) userChanged,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class UserLoginEvent implements UserEvent {
  const factory UserLoginEvent(final User user) = _$UserLoginEvent;

  User get user;
  @JsonKey(ignore: true)
  _$$UserLoginEventCopyWith<_$UserLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLogoutEventCopyWith<$Res> {
  factory _$$UserLogoutEventCopyWith(
          _$UserLogoutEvent value, $Res Function(_$UserLogoutEvent) then) =
      __$$UserLogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLogoutEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$UserLogoutEventCopyWith<$Res> {
  __$$UserLogoutEventCopyWithImpl(
      _$UserLogoutEvent _value, $Res Function(_$UserLogoutEvent) _then)
      : super(_value, (v) => _then(v as _$UserLogoutEvent));

  @override
  _$UserLogoutEvent get _value => super._value as _$UserLogoutEvent;
}

/// @nodoc

class _$UserLogoutEvent
    with DiagnosticableTreeMixin
    implements UserLogoutEvent {
  const _$UserLogoutEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() logout,
    required TResult Function() fetchDetails,
    required TResult Function(User user) userChanged,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
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
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserFetchDetailsEvent value) fetchDetails,
    required TResult Function(UserChangedEvent value) userChanged,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class UserLogoutEvent implements UserEvent {
  const factory UserLogoutEvent() = _$UserLogoutEvent;
}

/// @nodoc
abstract class _$$UserFetchDetailsEventCopyWith<$Res> {
  factory _$$UserFetchDetailsEventCopyWith(_$UserFetchDetailsEvent value,
          $Res Function(_$UserFetchDetailsEvent) then) =
      __$$UserFetchDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchDetailsEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$UserFetchDetailsEventCopyWith<$Res> {
  __$$UserFetchDetailsEventCopyWithImpl(_$UserFetchDetailsEvent _value,
      $Res Function(_$UserFetchDetailsEvent) _then)
      : super(_value, (v) => _then(v as _$UserFetchDetailsEvent));

  @override
  _$UserFetchDetailsEvent get _value => super._value as _$UserFetchDetailsEvent;
}

/// @nodoc

class _$UserFetchDetailsEvent
    with DiagnosticableTreeMixin
    implements UserFetchDetailsEvent {
  const _$UserFetchDetailsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.fetchDetails()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.fetchDetails'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserFetchDetailsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() logout,
    required TResult Function() fetchDetails,
    required TResult Function(User user) userChanged,
  }) {
    return fetchDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
  }) {
    return fetchDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserFetchDetailsEvent value) fetchDetails,
    required TResult Function(UserChangedEvent value) userChanged,
  }) {
    return fetchDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
  }) {
    return fetchDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
    required TResult orElse(),
  }) {
    if (fetchDetails != null) {
      return fetchDetails(this);
    }
    return orElse();
  }
}

abstract class UserFetchDetailsEvent implements UserEvent {
  const factory UserFetchDetailsEvent() = _$UserFetchDetailsEvent;
}

/// @nodoc
abstract class _$$UserChangedEventCopyWith<$Res> {
  factory _$$UserChangedEventCopyWith(
          _$UserChangedEvent value, $Res Function(_$UserChangedEvent) then) =
      __$$UserChangedEventCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserChangedEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$$UserChangedEventCopyWith<$Res> {
  __$$UserChangedEventCopyWithImpl(
      _$UserChangedEvent _value, $Res Function(_$UserChangedEvent) _then)
      : super(_value, (v) => _then(v as _$UserChangedEvent));

  @override
  _$UserChangedEvent get _value => super._value as _$UserChangedEvent;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserChangedEvent(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserChangedEvent
    with DiagnosticableTreeMixin
    implements UserChangedEvent {
  const _$UserChangedEvent(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.userChanged(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.userChanged'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserChangedEvent &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserChangedEventCopyWith<_$UserChangedEvent> get copyWith =>
      __$$UserChangedEventCopyWithImpl<_$UserChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) login,
    required TResult Function() logout,
    required TResult Function() fetchDetails,
    required TResult Function(User user) userChanged,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? login,
    TResult Function()? logout,
    TResult Function()? fetchDetails,
    TResult Function(User user)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoginEvent value) login,
    required TResult Function(UserLogoutEvent value) logout,
    required TResult Function(UserFetchDetailsEvent value) fetchDetails,
    required TResult Function(UserChangedEvent value) userChanged,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoginEvent value)? login,
    TResult Function(UserLogoutEvent value)? logout,
    TResult Function(UserFetchDetailsEvent value)? fetchDetails,
    TResult Function(UserChangedEvent value)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class UserChangedEvent implements UserEvent {
  const factory UserChangedEvent(final User user) = _$UserChangedEvent;

  User get user;
  @JsonKey(ignore: true)
  _$$UserChangedEventCopyWith<_$UserChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

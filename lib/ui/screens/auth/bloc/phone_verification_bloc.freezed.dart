// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerificationEventCopyWith<$Res> {
  factory $PhoneVerificationEventCopyWith(PhoneVerificationEvent value,
          $Res Function(PhoneVerificationEvent) then) =
      _$PhoneVerificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneVerificationEventCopyWithImpl<$Res>
    implements $PhoneVerificationEventCopyWith<$Res> {
  _$PhoneVerificationEventCopyWithImpl(this._value, this._then);

  final PhoneVerificationEvent _value;
  // ignore: unused_field
  final $Res Function(PhoneVerificationEvent) _then;
}

/// @nodoc
abstract class _$$_SetPhoneEventCopyWith<$Res> {
  factory _$$_SetPhoneEventCopyWith(
          _$_SetPhoneEvent value, $Res Function(_$_SetPhoneEvent) then) =
      __$$_SetPhoneEventCopyWithImpl<$Res>;
  $Res call({String? phone});
}

/// @nodoc
class __$$_SetPhoneEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_SetPhoneEventCopyWith<$Res> {
  __$$_SetPhoneEventCopyWithImpl(
      _$_SetPhoneEvent _value, $Res Function(_$_SetPhoneEvent) _then)
      : super(_value, (v) => _then(v as _$_SetPhoneEvent));

  @override
  _$_SetPhoneEvent get _value => super._value as _$_SetPhoneEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_$_SetPhoneEvent(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetPhoneEvent with DiagnosticableTreeMixin implements _SetPhoneEvent {
  const _$_SetPhoneEvent(this.phone);

  @override
  final String? phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.setPhone(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneVerificationEvent.setPhone'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetPhoneEvent &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$_SetPhoneEventCopyWith<_$_SetPhoneEvent> get copyWith =>
      __$$_SetPhoneEventCopyWithImpl<_$_SetPhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return setPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return setPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (setPhone != null) {
      return setPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return setPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return setPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (setPhone != null) {
      return setPhone(this);
    }
    return orElse();
  }
}

abstract class _SetPhoneEvent implements PhoneVerificationEvent {
  const factory _SetPhoneEvent(final String? phone) = _$_SetPhoneEvent;

  String? get phone;
  @JsonKey(ignore: true)
  _$$_SetPhoneEventCopyWith<_$_SetPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetTermsAcceptedEventCopyWith<$Res> {
  factory _$$_SetTermsAcceptedEventCopyWith(_$_SetTermsAcceptedEvent value,
          $Res Function(_$_SetTermsAcceptedEvent) then) =
      __$$_SetTermsAcceptedEventCopyWithImpl<$Res>;
  $Res call({bool accepted});
}

/// @nodoc
class __$$_SetTermsAcceptedEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_SetTermsAcceptedEventCopyWith<$Res> {
  __$$_SetTermsAcceptedEventCopyWithImpl(_$_SetTermsAcceptedEvent _value,
      $Res Function(_$_SetTermsAcceptedEvent) _then)
      : super(_value, (v) => _then(v as _$_SetTermsAcceptedEvent));

  @override
  _$_SetTermsAcceptedEvent get _value =>
      super._value as _$_SetTermsAcceptedEvent;

  @override
  $Res call({
    Object? accepted = freezed,
  }) {
    return _then(_$_SetTermsAcceptedEvent(
      accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SetTermsAcceptedEvent
    with DiagnosticableTreeMixin
    implements _SetTermsAcceptedEvent {
  const _$_SetTermsAcceptedEvent(this.accepted);

  @override
  final bool accepted;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.termsAccepted(accepted: $accepted)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneVerificationEvent.termsAccepted'))
      ..add(DiagnosticsProperty('accepted', accepted));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetTermsAcceptedEvent &&
            const DeepCollectionEquality().equals(other.accepted, accepted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(accepted));

  @JsonKey(ignore: true)
  @override
  _$$_SetTermsAcceptedEventCopyWith<_$_SetTermsAcceptedEvent> get copyWith =>
      __$$_SetTermsAcceptedEventCopyWithImpl<_$_SetTermsAcceptedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return termsAccepted(accepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return termsAccepted?.call(accepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (termsAccepted != null) {
      return termsAccepted(accepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return termsAccepted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return termsAccepted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (termsAccepted != null) {
      return termsAccepted(this);
    }
    return orElse();
  }
}

abstract class _SetTermsAcceptedEvent implements PhoneVerificationEvent {
  const factory _SetTermsAcceptedEvent(final bool accepted) =
      _$_SetTermsAcceptedEvent;

  bool get accepted;
  @JsonKey(ignore: true)
  _$$_SetTermsAcceptedEventCopyWith<_$_SetTermsAcceptedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SetSmsCodeEventCopyWith<$Res> {
  factory _$$_SetSmsCodeEventCopyWith(
          _$_SetSmsCodeEvent value, $Res Function(_$_SetSmsCodeEvent) then) =
      __$$_SetSmsCodeEventCopyWithImpl<$Res>;
  $Res call({String? code});
}

/// @nodoc
class __$$_SetSmsCodeEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_SetSmsCodeEventCopyWith<$Res> {
  __$$_SetSmsCodeEventCopyWithImpl(
      _$_SetSmsCodeEvent _value, $Res Function(_$_SetSmsCodeEvent) _then)
      : super(_value, (v) => _then(v as _$_SetSmsCodeEvent));

  @override
  _$_SetSmsCodeEvent get _value => super._value as _$_SetSmsCodeEvent;

  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$_SetSmsCodeEvent(
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SetSmsCodeEvent
    with DiagnosticableTreeMixin
    implements _SetSmsCodeEvent {
  const _$_SetSmsCodeEvent(this.code);

  @override
  final String? code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.setSmsCode(code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneVerificationEvent.setSmsCode'))
      ..add(DiagnosticsProperty('code', code));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetSmsCodeEvent &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$_SetSmsCodeEventCopyWith<_$_SetSmsCodeEvent> get copyWith =>
      __$$_SetSmsCodeEventCopyWithImpl<_$_SetSmsCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return setSmsCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return setSmsCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (setSmsCode != null) {
      return setSmsCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return setSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return setSmsCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (setSmsCode != null) {
      return setSmsCode(this);
    }
    return orElse();
  }
}

abstract class _SetSmsCodeEvent implements PhoneVerificationEvent {
  const factory _SetSmsCodeEvent(final String? code) = _$_SetSmsCodeEvent;

  String? get code;
  @JsonKey(ignore: true)
  _$$_SetSmsCodeEventCopyWith<_$_SetSmsCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeExpiredEventCopyWith<$Res> {
  factory _$$_TimeExpiredEventCopyWith(
          _$_TimeExpiredEvent value, $Res Function(_$_TimeExpiredEvent) then) =
      __$$_TimeExpiredEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TimeExpiredEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_TimeExpiredEventCopyWith<$Res> {
  __$$_TimeExpiredEventCopyWithImpl(
      _$_TimeExpiredEvent _value, $Res Function(_$_TimeExpiredEvent) _then)
      : super(_value, (v) => _then(v as _$_TimeExpiredEvent));

  @override
  _$_TimeExpiredEvent get _value => super._value as _$_TimeExpiredEvent;
}

/// @nodoc

class _$_TimeExpiredEvent
    with DiagnosticableTreeMixin
    implements _TimeExpiredEvent {
  const _$_TimeExpiredEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.timeExpired()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PhoneVerificationEvent.timeExpired'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TimeExpiredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return timeExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return timeExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (timeExpired != null) {
      return timeExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return timeExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return timeExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (timeExpired != null) {
      return timeExpired(this);
    }
    return orElse();
  }
}

abstract class _TimeExpiredEvent implements PhoneVerificationEvent {
  const factory _TimeExpiredEvent() = _$_TimeExpiredEvent;
}

/// @nodoc
abstract class _$$_SendPhoneVerificationEventCopyWith<$Res> {
  factory _$$_SendPhoneVerificationEventCopyWith(
          _$_SendPhoneVerificationEvent value,
          $Res Function(_$_SendPhoneVerificationEvent) then) =
      __$$_SendPhoneVerificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendPhoneVerificationEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_SendPhoneVerificationEventCopyWith<$Res> {
  __$$_SendPhoneVerificationEventCopyWithImpl(
      _$_SendPhoneVerificationEvent _value,
      $Res Function(_$_SendPhoneVerificationEvent) _then)
      : super(_value, (v) => _then(v as _$_SendPhoneVerificationEvent));

  @override
  _$_SendPhoneVerificationEvent get _value =>
      super._value as _$_SendPhoneVerificationEvent;
}

/// @nodoc

class _$_SendPhoneVerificationEvent
    with DiagnosticableTreeMixin
    implements _SendPhoneVerificationEvent {
  const _$_SendPhoneVerificationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.sendPhoneVerification()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'PhoneVerificationEvent.sendPhoneVerification'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendPhoneVerificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return sendPhoneVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return sendPhoneVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (sendPhoneVerification != null) {
      return sendPhoneVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return sendPhoneVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return sendPhoneVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (sendPhoneVerification != null) {
      return sendPhoneVerification(this);
    }
    return orElse();
  }
}

abstract class _SendPhoneVerificationEvent implements PhoneVerificationEvent {
  const factory _SendPhoneVerificationEvent() = _$_SendPhoneVerificationEvent;
}

/// @nodoc
abstract class _$$_VerifyPhoneEventCopyWith<$Res> {
  factory _$$_VerifyPhoneEventCopyWith(
          _$_VerifyPhoneEvent value, $Res Function(_$_VerifyPhoneEvent) then) =
      __$$_VerifyPhoneEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyPhoneEventCopyWithImpl<$Res>
    extends _$PhoneVerificationEventCopyWithImpl<$Res>
    implements _$$_VerifyPhoneEventCopyWith<$Res> {
  __$$_VerifyPhoneEventCopyWithImpl(
      _$_VerifyPhoneEvent _value, $Res Function(_$_VerifyPhoneEvent) _then)
      : super(_value, (v) => _then(v as _$_VerifyPhoneEvent));

  @override
  _$_VerifyPhoneEvent get _value => super._value as _$_VerifyPhoneEvent;
}

/// @nodoc

class _$_VerifyPhoneEvent
    with DiagnosticableTreeMixin
    implements _VerifyPhoneEvent {
  const _$_VerifyPhoneEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationEvent.verifyPhone()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'PhoneVerificationEvent.verifyPhone'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyPhoneEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? phone) setPhone,
    required TResult Function(bool accepted) termsAccepted,
    required TResult Function(String? code) setSmsCode,
    required TResult Function() timeExpired,
    required TResult Function() sendPhoneVerification,
    required TResult Function() verifyPhone,
  }) {
    return verifyPhone();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
  }) {
    return verifyPhone?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? phone)? setPhone,
    TResult Function(bool accepted)? termsAccepted,
    TResult Function(String? code)? setSmsCode,
    TResult Function()? timeExpired,
    TResult Function()? sendPhoneVerification,
    TResult Function()? verifyPhone,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetPhoneEvent value) setPhone,
    required TResult Function(_SetTermsAcceptedEvent value) termsAccepted,
    required TResult Function(_SetSmsCodeEvent value) setSmsCode,
    required TResult Function(_TimeExpiredEvent value) timeExpired,
    required TResult Function(_SendPhoneVerificationEvent value)
        sendPhoneVerification,
    required TResult Function(_VerifyPhoneEvent value) verifyPhone,
  }) {
    return verifyPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
  }) {
    return verifyPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetPhoneEvent value)? setPhone,
    TResult Function(_SetTermsAcceptedEvent value)? termsAccepted,
    TResult Function(_SetSmsCodeEvent value)? setSmsCode,
    TResult Function(_TimeExpiredEvent value)? timeExpired,
    TResult Function(_SendPhoneVerificationEvent value)? sendPhoneVerification,
    TResult Function(_VerifyPhoneEvent value)? verifyPhone,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneEvent implements PhoneVerificationEvent {
  const factory _VerifyPhoneEvent() = _$_VerifyPhoneEvent;
}

/// @nodoc
mixin _$PhoneVerificationState {
  FormzStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get smsCode => throw _privateConstructorUsedError;
  bool get codeSent => throw _privateConstructorUsedError;
  bool get timerRunning => throw _privateConstructorUsedError;
  bool get termsAccepted => throw _privateConstructorUsedError;
  int? get forceResendingToken => throw _privateConstructorUsedError;
  String? get verificationId => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneVerificationStateCopyWith<PhoneVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerificationStateCopyWith<$Res> {
  factory $PhoneVerificationStateCopyWith(PhoneVerificationState value,
          $Res Function(PhoneVerificationState) then) =
      _$PhoneVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      String? error,
      String? phone,
      String? smsCode,
      bool codeSent,
      bool timerRunning,
      bool termsAccepted,
      int? forceResendingToken,
      String? verificationId,
      User? user});
}

/// @nodoc
class _$PhoneVerificationStateCopyWithImpl<$Res>
    implements $PhoneVerificationStateCopyWith<$Res> {
  _$PhoneVerificationStateCopyWithImpl(this._value, this._then);

  final PhoneVerificationState _value;
  // ignore: unused_field
  final $Res Function(PhoneVerificationState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? phone = freezed,
    Object? smsCode = freezed,
    Object? codeSent = freezed,
    Object? timerRunning = freezed,
    Object? termsAccepted = freezed,
    Object? forceResendingToken = freezed,
    Object? verificationId = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSent: codeSent == freezed
          ? _value.codeSent
          : codeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      timerRunning: timerRunning == freezed
          ? _value.timerRunning
          : timerRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAccepted: termsAccepted == freezed
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      forceResendingToken: forceResendingToken == freezed
          ? _value.forceResendingToken
          : forceResendingToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneVerificationStateCopyWith<$Res>
    implements $PhoneVerificationStateCopyWith<$Res> {
  factory _$$_PhoneVerificationStateCopyWith(_$_PhoneVerificationState value,
          $Res Function(_$_PhoneVerificationState) then) =
      __$$_PhoneVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      String? error,
      String? phone,
      String? smsCode,
      bool codeSent,
      bool timerRunning,
      bool termsAccepted,
      int? forceResendingToken,
      String? verificationId,
      User? user});
}

/// @nodoc
class __$$_PhoneVerificationStateCopyWithImpl<$Res>
    extends _$PhoneVerificationStateCopyWithImpl<$Res>
    implements _$$_PhoneVerificationStateCopyWith<$Res> {
  __$$_PhoneVerificationStateCopyWithImpl(_$_PhoneVerificationState _value,
      $Res Function(_$_PhoneVerificationState) _then)
      : super(_value, (v) => _then(v as _$_PhoneVerificationState));

  @override
  _$_PhoneVerificationState get _value =>
      super._value as _$_PhoneVerificationState;

  @override
  $Res call({
    Object? status = freezed,
    Object? error = freezed,
    Object? phone = freezed,
    Object? smsCode = freezed,
    Object? codeSent = freezed,
    Object? timerRunning = freezed,
    Object? termsAccepted = freezed,
    Object? forceResendingToken = freezed,
    Object? verificationId = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_PhoneVerificationState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String?,
      codeSent: codeSent == freezed
          ? _value.codeSent
          : codeSent // ignore: cast_nullable_to_non_nullable
              as bool,
      timerRunning: timerRunning == freezed
          ? _value.timerRunning
          : timerRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      termsAccepted: termsAccepted == freezed
          ? _value.termsAccepted
          : termsAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      forceResendingToken: forceResendingToken == freezed
          ? _value.forceResendingToken
          : forceResendingToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_PhoneVerificationState
    with DiagnosticableTreeMixin
    implements _PhoneVerificationState {
  const _$_PhoneVerificationState(
      {this.status = FormzStatus.pure,
      this.error,
      this.phone,
      this.smsCode,
      this.codeSent = false,
      this.timerRunning = false,
      this.termsAccepted = false,
      this.forceResendingToken,
      this.verificationId,
      this.user});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final String? error;
  @override
  final String? phone;
  @override
  final String? smsCode;
  @override
  @JsonKey()
  final bool codeSent;
  @override
  @JsonKey()
  final bool timerRunning;
  @override
  @JsonKey()
  final bool termsAccepted;
  @override
  final int? forceResendingToken;
  @override
  final String? verificationId;
  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhoneVerificationState(status: $status, error: $error, phone: $phone, smsCode: $smsCode, codeSent: $codeSent, timerRunning: $timerRunning, termsAccepted: $termsAccepted, forceResendingToken: $forceResendingToken, verificationId: $verificationId, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhoneVerificationState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('smsCode', smsCode))
      ..add(DiagnosticsProperty('codeSent', codeSent))
      ..add(DiagnosticsProperty('timerRunning', timerRunning))
      ..add(DiagnosticsProperty('termsAccepted', termsAccepted))
      ..add(DiagnosticsProperty('forceResendingToken', forceResendingToken))
      ..add(DiagnosticsProperty('verificationId', verificationId))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneVerificationState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality().equals(other.codeSent, codeSent) &&
            const DeepCollectionEquality()
                .equals(other.timerRunning, timerRunning) &&
            const DeepCollectionEquality()
                .equals(other.termsAccepted, termsAccepted) &&
            const DeepCollectionEquality()
                .equals(other.forceResendingToken, forceResendingToken) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(codeSent),
      const DeepCollectionEquality().hash(timerRunning),
      const DeepCollectionEquality().hash(termsAccepted),
      const DeepCollectionEquality().hash(forceResendingToken),
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneVerificationStateCopyWith<_$_PhoneVerificationState> get copyWith =>
      __$$_PhoneVerificationStateCopyWithImpl<_$_PhoneVerificationState>(
          this, _$identity);
}

abstract class _PhoneVerificationState implements PhoneVerificationState {
  const factory _PhoneVerificationState(
      {final FormzStatus status,
      final String? error,
      final String? phone,
      final String? smsCode,
      final bool codeSent,
      final bool timerRunning,
      final bool termsAccepted,
      final int? forceResendingToken,
      final String? verificationId,
      final User? user}) = _$_PhoneVerificationState;

  @override
  FormzStatus get status;
  @override
  String? get error;
  @override
  String? get phone;
  @override
  String? get smsCode;
  @override
  bool get codeSent;
  @override
  bool get timerRunning;
  @override
  bool get termsAccepted;
  @override
  int? get forceResendingToken;
  @override
  String? get verificationId;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneVerificationStateCopyWith<_$_PhoneVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

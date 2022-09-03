// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  String get name => throw _privateConstructorUsedError;
  File? get image => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call({String name, File? image, FormzStatus status, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
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
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({String name, File? image, FormzStatus status, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_ProfileState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_ProfileState with DiagnosticableTreeMixin implements _ProfileState {
  const _$_ProfileState(
      {this.name = '', this.image, this.status = FormzStatus.pure, this.user});

  @override
  @JsonKey()
  final String name;
  @override
  final File? image;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  final User? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState(name: $name, image: $image, status: $status, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final String name,
      final File? image,
      final FormzStatus status,
      final User? user}) = _$_ProfileState;

  @override
  String get name;
  @override
  File? get image;
  @override
  FormzStatus get status;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) valuesChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function() update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileValuesChangedEvent value) valuesChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(ProfileUpdateEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$ProfileValuesChangedEventCopyWith<$Res> {
  factory _$$ProfileValuesChangedEventCopyWith(
          _$ProfileValuesChangedEvent value,
          $Res Function(_$ProfileValuesChangedEvent) then) =
      __$$ProfileValuesChangedEventCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class __$$ProfileValuesChangedEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ProfileValuesChangedEventCopyWith<$Res> {
  __$$ProfileValuesChangedEventCopyWithImpl(_$ProfileValuesChangedEvent _value,
      $Res Function(_$ProfileValuesChangedEvent) _then)
      : super(_value, (v) => _then(v as _$ProfileValuesChangedEvent));

  @override
  _$ProfileValuesChangedEvent get _value =>
      super._value as _$ProfileValuesChangedEvent;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$ProfileValuesChangedEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProfileValuesChangedEvent
    with DiagnosticableTreeMixin
    implements ProfileValuesChangedEvent {
  const _$ProfileValuesChangedEvent({this.name});

  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.valuesChanged(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.valuesChanged'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileValuesChangedEvent &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$ProfileValuesChangedEventCopyWith<_$ProfileValuesChangedEvent>
      get copyWith => __$$ProfileValuesChangedEventCopyWithImpl<
          _$ProfileValuesChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) valuesChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function() update,
  }) {
    return valuesChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
  }) {
    return valuesChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (valuesChanged != null) {
      return valuesChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileValuesChangedEvent value) valuesChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(ProfileUpdateEvent value) update,
  }) {
    return valuesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
  }) {
    return valuesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (valuesChanged != null) {
      return valuesChanged(this);
    }
    return orElse();
  }
}

abstract class ProfileValuesChangedEvent implements ProfileEvent {
  const factory ProfileValuesChangedEvent({final String? name}) =
      _$ProfileValuesChangedEvent;

  String? get name;
  @JsonKey(ignore: true)
  _$$ProfileValuesChangedEventCopyWith<_$ProfileValuesChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageEventCopyWith<$Res> {
  factory _$$PickImageEventCopyWith(
          _$PickImageEvent value, $Res Function(_$PickImageEvent) then) =
      __$$PickImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$PickImageEventCopyWith<$Res> {
  __$$PickImageEventCopyWithImpl(
      _$PickImageEvent _value, $Res Function(_$PickImageEvent) _then)
      : super(_value, (v) => _then(v as _$PickImageEvent));

  @override
  _$PickImageEvent get _value => super._value as _$PickImageEvent;
}

/// @nodoc

class _$PickImageEvent with DiagnosticableTreeMixin implements PickImageEvent {
  const _$PickImageEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.pickImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileEvent.pickImage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) valuesChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function() update,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileValuesChangedEvent value) valuesChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(ProfileUpdateEvent value) update,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImageEvent implements ProfileEvent {
  const factory PickImageEvent() = _$PickImageEvent;
}

/// @nodoc
abstract class _$$PickImageCameraEventCopyWith<$Res> {
  factory _$$PickImageCameraEventCopyWith(_$PickImageCameraEvent value,
          $Res Function(_$PickImageCameraEvent) then) =
      __$$PickImageCameraEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageCameraEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$PickImageCameraEventCopyWith<$Res> {
  __$$PickImageCameraEventCopyWithImpl(_$PickImageCameraEvent _value,
      $Res Function(_$PickImageCameraEvent) _then)
      : super(_value, (v) => _then(v as _$PickImageCameraEvent));

  @override
  _$PickImageCameraEvent get _value => super._value as _$PickImageCameraEvent;
}

/// @nodoc

class _$PickImageCameraEvent
    with DiagnosticableTreeMixin
    implements PickImageCameraEvent {
  const _$PickImageCameraEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.pickImageCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileEvent.pickImageCamera'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageCameraEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) valuesChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function() update,
  }) {
    return pickImageCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
  }) {
    return pickImageCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (pickImageCamera != null) {
      return pickImageCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileValuesChangedEvent value) valuesChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(ProfileUpdateEvent value) update,
  }) {
    return pickImageCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
  }) {
    return pickImageCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (pickImageCamera != null) {
      return pickImageCamera(this);
    }
    return orElse();
  }
}

abstract class PickImageCameraEvent implements ProfileEvent {
  const factory PickImageCameraEvent() = _$PickImageCameraEvent;
}

/// @nodoc
abstract class _$$ProfileUpdateEventCopyWith<$Res> {
  factory _$$ProfileUpdateEventCopyWith(_$ProfileUpdateEvent value,
          $Res Function(_$ProfileUpdateEvent) then) =
      __$$ProfileUpdateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileUpdateEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$ProfileUpdateEventCopyWith<$Res> {
  __$$ProfileUpdateEventCopyWithImpl(
      _$ProfileUpdateEvent _value, $Res Function(_$ProfileUpdateEvent) _then)
      : super(_value, (v) => _then(v as _$ProfileUpdateEvent));

  @override
  _$ProfileUpdateEvent get _value => super._value as _$ProfileUpdateEvent;
}

/// @nodoc

class _$ProfileUpdateEvent
    with DiagnosticableTreeMixin
    implements ProfileUpdateEvent {
  const _$ProfileUpdateEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.update()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileEvent.update'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileUpdateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) valuesChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function() update,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? valuesChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function()? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileValuesChangedEvent value) valuesChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(ProfileUpdateEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileValuesChangedEvent value)? valuesChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(ProfileUpdateEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class ProfileUpdateEvent implements ProfileEvent {
  const factory ProfileUpdateEvent() = _$ProfileUpdateEvent;
}

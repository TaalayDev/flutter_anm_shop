// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  Loadable<List<Region>> get regions => throw _privateConstructorUsedError;
  Loadable<List<Category>> get categories => throw _privateConstructorUsedError;
  Loadable<AppSettingsModel> get settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {Loadable<List<Region>> regions,
      Loadable<List<Category>> categories,
      Loadable<AppSettingsModel> settings});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? regions = freezed,
    Object? categories = freezed,
    Object? settings = freezed,
  }) {
    return _then(_value.copyWith(
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Region>>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Category>>,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Loadable<AppSettingsModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$_AppStateCopyWith(
          _$_AppState value, $Res Function(_$_AppState) then) =
      __$$_AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Loadable<List<Region>> regions,
      Loadable<List<Category>> categories,
      Loadable<AppSettingsModel> settings});
}

/// @nodoc
class __$$_AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$$_AppStateCopyWith<$Res> {
  __$$_AppStateCopyWithImpl(
      _$_AppState _value, $Res Function(_$_AppState) _then)
      : super(_value, (v) => _then(v as _$_AppState));

  @override
  _$_AppState get _value => super._value as _$_AppState;

  @override
  $Res call({
    Object? regions = freezed,
    Object? categories = freezed,
    Object? settings = freezed,
  }) {
    return _then(_$_AppState(
      regions: regions == freezed
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Region>>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Category>>,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Loadable<AppSettingsModel>,
    ));
  }
}

/// @nodoc

class _$_AppState with DiagnosticableTreeMixin implements _AppState {
  const _$_AppState(
      {this.regions = const Loadable(data: <Region>[]),
      this.categories = const Loadable(data: <Category>[]),
      this.settings = const Loadable(data: AppSettingsModel())});

  @override
  @JsonKey()
  final Loadable<List<Region>> regions;
  @override
  @JsonKey()
  final Loadable<List<Category>> categories;
  @override
  @JsonKey()
  final Loadable<AppSettingsModel> settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(regions: $regions, categories: $categories, settings: $settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('regions', regions))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('settings', settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppState &&
            const DeepCollectionEquality().equals(other.regions, regions) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(regions),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      __$$_AppStateCopyWithImpl<_$_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {final Loadable<List<Region>> regions,
      final Loadable<List<Category>> categories,
      final Loadable<AppSettingsModel> settings}) = _$_AppState;

  @override
  Loadable<List<Region>> get regions;
  @override
  Loadable<List<Category>> get categories;
  @override
  Loadable<AppSettingsModel> get settings;
  @override
  @JsonKey(ignore: true)
  _$$_AppStateCopyWith<_$_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSettings,
    required TResult Function() fetchLocations,
    required TResult Function() fetchCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppFetchSettingsEvent value) fetchSettings,
    required TResult Function(_AppFetchLocationsEvent value) fetchLocations,
    required TResult Function(_AppFetchCategoriesEvent value) fetchCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$$_AppFetchSettingsEventCopyWith<$Res> {
  factory _$$_AppFetchSettingsEventCopyWith(_$_AppFetchSettingsEvent value,
          $Res Function(_$_AppFetchSettingsEvent) then) =
      __$$_AppFetchSettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppFetchSettingsEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_AppFetchSettingsEventCopyWith<$Res> {
  __$$_AppFetchSettingsEventCopyWithImpl(_$_AppFetchSettingsEvent _value,
      $Res Function(_$_AppFetchSettingsEvent) _then)
      : super(_value, (v) => _then(v as _$_AppFetchSettingsEvent));

  @override
  _$_AppFetchSettingsEvent get _value =>
      super._value as _$_AppFetchSettingsEvent;
}

/// @nodoc

class _$_AppFetchSettingsEvent
    with DiagnosticableTreeMixin
    implements _AppFetchSettingsEvent {
  const _$_AppFetchSettingsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.fetchSettings()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.fetchSettings'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppFetchSettingsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSettings,
    required TResult Function() fetchLocations,
    required TResult Function() fetchCategories,
  }) {
    return fetchSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
  }) {
    return fetchSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchSettings != null) {
      return fetchSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppFetchSettingsEvent value) fetchSettings,
    required TResult Function(_AppFetchLocationsEvent value) fetchLocations,
    required TResult Function(_AppFetchCategoriesEvent value) fetchCategories,
  }) {
    return fetchSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
  }) {
    return fetchSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchSettings != null) {
      return fetchSettings(this);
    }
    return orElse();
  }
}

abstract class _AppFetchSettingsEvent implements AppEvent {
  const factory _AppFetchSettingsEvent() = _$_AppFetchSettingsEvent;
}

/// @nodoc
abstract class _$$_AppFetchLocationsEventCopyWith<$Res> {
  factory _$$_AppFetchLocationsEventCopyWith(_$_AppFetchLocationsEvent value,
          $Res Function(_$_AppFetchLocationsEvent) then) =
      __$$_AppFetchLocationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppFetchLocationsEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_AppFetchLocationsEventCopyWith<$Res> {
  __$$_AppFetchLocationsEventCopyWithImpl(_$_AppFetchLocationsEvent _value,
      $Res Function(_$_AppFetchLocationsEvent) _then)
      : super(_value, (v) => _then(v as _$_AppFetchLocationsEvent));

  @override
  _$_AppFetchLocationsEvent get _value =>
      super._value as _$_AppFetchLocationsEvent;
}

/// @nodoc

class _$_AppFetchLocationsEvent
    with DiagnosticableTreeMixin
    implements _AppFetchLocationsEvent {
  const _$_AppFetchLocationsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.fetchLocations()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.fetchLocations'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppFetchLocationsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSettings,
    required TResult Function() fetchLocations,
    required TResult Function() fetchCategories,
  }) {
    return fetchLocations();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
  }) {
    return fetchLocations?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchLocations != null) {
      return fetchLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppFetchSettingsEvent value) fetchSettings,
    required TResult Function(_AppFetchLocationsEvent value) fetchLocations,
    required TResult Function(_AppFetchCategoriesEvent value) fetchCategories,
  }) {
    return fetchLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
  }) {
    return fetchLocations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchLocations != null) {
      return fetchLocations(this);
    }
    return orElse();
  }
}

abstract class _AppFetchLocationsEvent implements AppEvent {
  const factory _AppFetchLocationsEvent() = _$_AppFetchLocationsEvent;
}

/// @nodoc
abstract class _$$_AppFetchCategoriesEventCopyWith<$Res> {
  factory _$$_AppFetchCategoriesEventCopyWith(_$_AppFetchCategoriesEvent value,
          $Res Function(_$_AppFetchCategoriesEvent) then) =
      __$$_AppFetchCategoriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppFetchCategoriesEventCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res>
    implements _$$_AppFetchCategoriesEventCopyWith<$Res> {
  __$$_AppFetchCategoriesEventCopyWithImpl(_$_AppFetchCategoriesEvent _value,
      $Res Function(_$_AppFetchCategoriesEvent) _then)
      : super(_value, (v) => _then(v as _$_AppFetchCategoriesEvent));

  @override
  _$_AppFetchCategoriesEvent get _value =>
      super._value as _$_AppFetchCategoriesEvent;
}

/// @nodoc

class _$_AppFetchCategoriesEvent
    with DiagnosticableTreeMixin
    implements _AppFetchCategoriesEvent {
  const _$_AppFetchCategoriesEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.fetchCategories()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.fetchCategories'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppFetchCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSettings,
    required TResult Function() fetchLocations,
    required TResult Function() fetchCategories,
  }) {
    return fetchCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
  }) {
    return fetchCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSettings,
    TResult Function()? fetchLocations,
    TResult Function()? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppFetchSettingsEvent value) fetchSettings,
    required TResult Function(_AppFetchLocationsEvent value) fetchLocations,
    required TResult Function(_AppFetchCategoriesEvent value) fetchCategories,
  }) {
    return fetchCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
  }) {
    return fetchCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppFetchSettingsEvent value)? fetchSettings,
    TResult Function(_AppFetchLocationsEvent value)? fetchLocations,
    TResult Function(_AppFetchCategoriesEvent value)? fetchCategories,
    required TResult orElse(),
  }) {
    if (fetchCategories != null) {
      return fetchCategories(this);
    }
    return orElse();
  }
}

abstract class _AppFetchCategoriesEvent implements AppEvent {
  const factory _AppFetchCategoriesEvent() = _$_AppFetchCategoriesEvent;
}

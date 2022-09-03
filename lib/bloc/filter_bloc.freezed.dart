// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  Filter get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call({Filter filter});

  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }

  @override
  $FilterCopyWith<$Res> get filter {
    return $FilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$$_FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateCopyWith(
          _$_FilterState value, $Res Function(_$_FilterState) then) =
      __$$_FilterStateCopyWithImpl<$Res>;
  @override
  $Res call({Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$_FilterStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$$_FilterStateCopyWith<$Res> {
  __$$_FilterStateCopyWithImpl(
      _$_FilterState _value, $Res Function(_$_FilterState) _then)
      : super(_value, (v) => _then(v as _$_FilterState));

  @override
  _$_FilterState get _value => super._value as _$_FilterState;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$_FilterState(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_FilterState with DiagnosticableTreeMixin implements _FilterState {
  const _$_FilterState({this.filter = const Filter()});

  @override
  @JsonKey()
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterState(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterState'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterState &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      __$$_FilterStateCopyWithImpl<_$_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState({final Filter filter}) = _$_FilterState;

  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterEvent {
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Region? get region => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? minPrice, double? maxPrice,
            Category? category, Region? region, City? city)
        valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? minPrice, double? maxPrice, Category? category,
            Region? region, City? city)?
        valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? minPrice, double? maxPrice, Category? category,
            Region? region, City? city)?
        valueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterValueChangedEvent value) valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilterValueChangedEvent value)? valueChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterValueChangedEvent value)? valueChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterEventCopyWith<FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
  $Res call(
      {double? minPrice,
      double? maxPrice,
      Category? category,
      Region? region,
      City? city});

  $CategoryCopyWith<$Res>? get category;
  $RegionCopyWith<$Res>? get region;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? category = freezed,
    Object? region = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }

  @override
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $RegionCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value));
    });
  }

  @override
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
abstract class _$$_FilterValueChangedEventCopyWith<$Res>
    implements $FilterEventCopyWith<$Res> {
  factory _$$_FilterValueChangedEventCopyWith(_$_FilterValueChangedEvent value,
          $Res Function(_$_FilterValueChangedEvent) then) =
      __$$_FilterValueChangedEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? minPrice,
      double? maxPrice,
      Category? category,
      Region? region,
      City? city});

  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $RegionCopyWith<$Res>? get region;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_FilterValueChangedEventCopyWithImpl<$Res>
    extends _$FilterEventCopyWithImpl<$Res>
    implements _$$_FilterValueChangedEventCopyWith<$Res> {
  __$$_FilterValueChangedEventCopyWithImpl(_$_FilterValueChangedEvent _value,
      $Res Function(_$_FilterValueChangedEvent) _then)
      : super(_value, (v) => _then(v as _$_FilterValueChangedEvent));

  @override
  _$_FilterValueChangedEvent get _value =>
      super._value as _$_FilterValueChangedEvent;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? category = freezed,
    Object? region = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_FilterValueChangedEvent(
      minPrice: minPrice == freezed
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: maxPrice == freezed
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      region: region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
    ));
  }
}

/// @nodoc

class _$_FilterValueChangedEvent
    with DiagnosticableTreeMixin
    implements _FilterValueChangedEvent {
  const _$_FilterValueChangedEvent(
      {this.minPrice, this.maxPrice, this.category, this.region, this.city});

  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final Category? category;
  @override
  final Region? region;
  @override
  final City? city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FilterEvent.valueChanged(minPrice: $minPrice, maxPrice: $maxPrice, category: $category, region: $region, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FilterEvent.valueChanged'))
      ..add(DiagnosticsProperty('minPrice', minPrice))
      ..add(DiagnosticsProperty('maxPrice', maxPrice))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterValueChangedEvent &&
            const DeepCollectionEquality().equals(other.minPrice, minPrice) &&
            const DeepCollectionEquality().equals(other.maxPrice, maxPrice) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minPrice),
      const DeepCollectionEquality().hash(maxPrice),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$$_FilterValueChangedEventCopyWith<_$_FilterValueChangedEvent>
      get copyWith =>
          __$$_FilterValueChangedEventCopyWithImpl<_$_FilterValueChangedEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? minPrice, double? maxPrice,
            Category? category, Region? region, City? city)
        valueChanged,
  }) {
    return valueChanged(minPrice, maxPrice, category, region, city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? minPrice, double? maxPrice, Category? category,
            Region? region, City? city)?
        valueChanged,
  }) {
    return valueChanged?.call(minPrice, maxPrice, category, region, city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? minPrice, double? maxPrice, Category? category,
            Region? region, City? city)?
        valueChanged,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(minPrice, maxPrice, category, region, city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterValueChangedEvent value) valueChanged,
  }) {
    return valueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilterValueChangedEvent value)? valueChanged,
  }) {
    return valueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterValueChangedEvent value)? valueChanged,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(this);
    }
    return orElse();
  }
}

abstract class _FilterValueChangedEvent implements FilterEvent {
  const factory _FilterValueChangedEvent(
      {final double? minPrice,
      final double? maxPrice,
      final Category? category,
      final Region? region,
      final City? city}) = _$_FilterValueChangedEvent;

  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  Category? get category;
  @override
  Region? get region;
  @override
  City? get city;
  @override
  @JsonKey(ignore: true)
  _$$_FilterValueChangedEventCopyWith<_$_FilterValueChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

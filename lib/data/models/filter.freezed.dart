// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Filter {
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Region? get region => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
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
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

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
abstract class _$$_FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$$_FilterCopyWith(_$_Filter value, $Res Function(_$_Filter) then) =
      __$$_FilterCopyWithImpl<$Res>;
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
class __$$_FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$$_FilterCopyWith<$Res> {
  __$$_FilterCopyWithImpl(_$_Filter _value, $Res Function(_$_Filter) _then)
      : super(_value, (v) => _then(v as _$_Filter));

  @override
  _$_Filter get _value => super._value as _$_Filter;

  @override
  $Res call({
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? category = freezed,
    Object? region = freezed,
    Object? city = freezed,
  }) {
    return _then(_$_Filter(
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

class _$_Filter with DiagnosticableTreeMixin implements _Filter {
  const _$_Filter(
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
    return 'Filter(minPrice: $minPrice, maxPrice: $maxPrice, category: $category, region: $region, city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Filter'))
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
            other is _$_Filter &&
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
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      __$$_FilterCopyWithImpl<_$_Filter>(this, _$identity);
}

abstract class _Filter implements Filter {
  const factory _Filter(
      {final double? minPrice,
      final double? maxPrice,
      final Category? category,
      final Region? region,
      final City? city}) = _$_Filter;

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
  _$$_FilterCopyWith<_$_Filter> get copyWith =>
      throw _privateConstructorUsedError;
}

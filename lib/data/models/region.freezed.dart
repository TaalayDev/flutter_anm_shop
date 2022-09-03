// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<City> get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res>;
  $Res call({String id, String name, List<City> cities});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res> implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  final Region _value;
  // ignore: unused_field
  final $Res Function(Region) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cities: cities == freezed
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
abstract class _$$_RegionCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$_RegionCopyWith(_$_Region value, $Res Function(_$_Region) then) =
      __$$_RegionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, List<City> cities});
}

/// @nodoc
class __$$_RegionCopyWithImpl<$Res> extends _$RegionCopyWithImpl<$Res>
    implements _$$_RegionCopyWith<$Res> {
  __$$_RegionCopyWithImpl(_$_Region _value, $Res Function(_$_Region) _then)
      : super(_value, (v) => _then(v as _$_Region));

  @override
  _$_Region get _value => super._value as _$_Region;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cities = freezed,
  }) {
    return _then(_$_Region(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cities: cities == freezed
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Region with DiagnosticableTreeMixin implements _Region {
  const _$_Region(
      {required this.id,
      required this.name,
      final List<City> cities = const []})
      : _cities = cities;

  factory _$_Region.fromJson(Map<String, dynamic> json) =>
      _$$_RegionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  final List<City> _cities;
  @override
  @JsonKey()
  List<City> get cities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Region(id: $id, name: $name, cities: $cities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Region'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('cities', cities));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Region &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  _$$_RegionCopyWith<_$_Region> get copyWith =>
      __$$_RegionCopyWithImpl<_$_Region>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
      {required final String id,
      required final String name,
      final List<City> cities}) = _$_Region;

  factory _Region.fromJson(Map<String, dynamic> json) = _$_Region.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<City> get cities;
  @override
  @JsonKey(ignore: true)
  _$$_RegionCopyWith<_$_Region> get copyWith =>
      throw _privateConstructorUsedError;
}

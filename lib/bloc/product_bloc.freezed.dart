// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  Loadable<List<Product>> get products => throw _privateConstructorUsedError;
  Filter? get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call({Loadable<List<Product>> products, Filter? filter});

  $FilterCopyWith<$Res>? get filter;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Product>>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
    ));
  }

  @override
  $FilterCopyWith<$Res>? get filter {
    if (_value.filter == null) {
      return null;
    }

    return $FilterCopyWith<$Res>(_value.filter!, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$_ProductStateCopyWith(
          _$_ProductState value, $Res Function(_$_ProductState) then) =
      __$$_ProductStateCopyWithImpl<$Res>;
  @override
  $Res call({Loadable<List<Product>> products, Filter? filter});

  @override
  $FilterCopyWith<$Res>? get filter;
}

/// @nodoc
class __$$_ProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$$_ProductStateCopyWith<$Res> {
  __$$_ProductStateCopyWithImpl(
      _$_ProductState _value, $Res Function(_$_ProductState) _then)
      : super(_value, (v) => _then(v as _$_ProductState));

  @override
  _$_ProductState get _value => super._value as _$_ProductState;

  @override
  $Res call({
    Object? products = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_ProductState(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Loadable<List<Product>>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter?,
    ));
  }
}

/// @nodoc

class _$_ProductState with DiagnosticableTreeMixin implements _ProductState {
  const _$_ProductState(
      {this.products = const Loadable(data: []), this.filter});

  @override
  @JsonKey()
  final Loadable<List<Product>> products;
  @override
  final Filter? filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState(products: $products, filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductState &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      __$$_ProductStateCopyWithImpl<_$_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final Loadable<List<Product>> products,
      final Filter? filter}) = _$_ProductState;

  @override
  Loadable<List<Product>> get products;
  @override
  Filter? get filter;
  @override
  @JsonKey(ignore: true)
  _$$_ProductStateCopyWith<_$_ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function() refresh,
    required TResult Function(Filter filter) setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchEvent value) fetchProducts,
    required TResult Function(ProductRefreshEvent value) refresh,
    required TResult Function(ProductSetFilterEvent value) setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$$ProductFetchEventCopyWith<$Res> {
  factory _$$ProductFetchEventCopyWith(
          _$ProductFetchEvent value, $Res Function(_$ProductFetchEvent) then) =
      __$$ProductFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductFetchEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$ProductFetchEventCopyWith<$Res> {
  __$$ProductFetchEventCopyWithImpl(
      _$ProductFetchEvent _value, $Res Function(_$ProductFetchEvent) _then)
      : super(_value, (v) => _then(v as _$ProductFetchEvent));

  @override
  _$ProductFetchEvent get _value => super._value as _$ProductFetchEvent;
}

/// @nodoc

class _$ProductFetchEvent
    with DiagnosticableTreeMixin
    implements ProductFetchEvent {
  const _$ProductFetchEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.fetchProducts()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductEvent.fetchProducts'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function() refresh,
    required TResult Function(Filter filter) setFilter,
  }) {
    return fetchProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
  }) {
    return fetchProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchEvent value) fetchProducts,
    required TResult Function(ProductRefreshEvent value) refresh,
    required TResult Function(ProductSetFilterEvent value) setFilter,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class ProductFetchEvent implements ProductEvent {
  const factory ProductFetchEvent() = _$ProductFetchEvent;
}

/// @nodoc
abstract class _$$ProductRefreshEventCopyWith<$Res> {
  factory _$$ProductRefreshEventCopyWith(_$ProductRefreshEvent value,
          $Res Function(_$ProductRefreshEvent) then) =
      __$$ProductRefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductRefreshEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$ProductRefreshEventCopyWith<$Res> {
  __$$ProductRefreshEventCopyWithImpl(
      _$ProductRefreshEvent _value, $Res Function(_$ProductRefreshEvent) _then)
      : super(_value, (v) => _then(v as _$ProductRefreshEvent));

  @override
  _$ProductRefreshEvent get _value => super._value as _$ProductRefreshEvent;
}

/// @nodoc

class _$ProductRefreshEvent
    with DiagnosticableTreeMixin
    implements ProductRefreshEvent {
  const _$ProductRefreshEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductRefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function() refresh,
    required TResult Function(Filter filter) setFilter,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchEvent value) fetchProducts,
    required TResult Function(ProductRefreshEvent value) refresh,
    required TResult Function(ProductSetFilterEvent value) setFilter,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class ProductRefreshEvent implements ProductEvent {
  const factory ProductRefreshEvent() = _$ProductRefreshEvent;
}

/// @nodoc
abstract class _$$ProductSetFilterEventCopyWith<$Res> {
  factory _$$ProductSetFilterEventCopyWith(_$ProductSetFilterEvent value,
          $Res Function(_$ProductSetFilterEvent) then) =
      __$$ProductSetFilterEventCopyWithImpl<$Res>;
  $Res call({Filter filter});

  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$ProductSetFilterEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$$ProductSetFilterEventCopyWith<$Res> {
  __$$ProductSetFilterEventCopyWithImpl(_$ProductSetFilterEvent _value,
      $Res Function(_$ProductSetFilterEvent) _then)
      : super(_value, (v) => _then(v as _$ProductSetFilterEvent));

  @override
  _$ProductSetFilterEvent get _value => super._value as _$ProductSetFilterEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$ProductSetFilterEvent(
      filter == freezed
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

class _$ProductSetFilterEvent
    with DiagnosticableTreeMixin
    implements ProductSetFilterEvent {
  const _$ProductSetFilterEvent(this.filter);

  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.setFilter(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.setFilter'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSetFilterEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$ProductSetFilterEventCopyWith<_$ProductSetFilterEvent> get copyWith =>
      __$$ProductSetFilterEventCopyWithImpl<_$ProductSetFilterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
    required TResult Function() refresh,
    required TResult Function(Filter filter) setFilter,
  }) {
    return setFilter(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
  }) {
    return setFilter?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    TResult Function()? refresh,
    TResult Function(Filter filter)? setFilter,
    required TResult orElse(),
  }) {
    if (setFilter != null) {
      return setFilter(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductFetchEvent value) fetchProducts,
    required TResult Function(ProductRefreshEvent value) refresh,
    required TResult Function(ProductSetFilterEvent value) setFilter,
  }) {
    return setFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
  }) {
    return setFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductFetchEvent value)? fetchProducts,
    TResult Function(ProductRefreshEvent value)? refresh,
    TResult Function(ProductSetFilterEvent value)? setFilter,
    required TResult orElse(),
  }) {
    if (setFilter != null) {
      return setFilter(this);
    }
    return orElse();
  }
}

abstract class ProductSetFilterEvent implements ProductEvent {
  const factory ProductSetFilterEvent(final Filter filter) =
      _$ProductSetFilterEvent;

  Filter get filter;
  @JsonKey(ignore: true)
  _$$ProductSetFilterEventCopyWith<_$ProductSetFilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

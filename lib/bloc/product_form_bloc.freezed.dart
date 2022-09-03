// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductFormState {
  ProductCreateModel get model => throw _privateConstructorUsedError;
  ProductFormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFormStateCopyWith<ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormStateCopyWith<$Res> {
  factory $ProductFormStateCopyWith(
          ProductFormState value, $Res Function(ProductFormState) then) =
      _$ProductFormStateCopyWithImpl<$Res>;
  $Res call({ProductCreateModel model, ProductFormStatus status});

  $ProductCreateModelCopyWith<$Res> get model;
}

/// @nodoc
class _$ProductFormStateCopyWithImpl<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  _$ProductFormStateCopyWithImpl(this._value, this._then);

  final ProductFormState _value;
  // ignore: unused_field
  final $Res Function(ProductFormState) _then;

  @override
  $Res call({
    Object? model = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProductCreateModel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductFormStatus,
    ));
  }

  @override
  $ProductCreateModelCopyWith<$Res> get model {
    return $ProductCreateModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductFormStateCopyWith<$Res>
    implements $ProductFormStateCopyWith<$Res> {
  factory _$$_ProductFormStateCopyWith(
          _$_ProductFormState value, $Res Function(_$_ProductFormState) then) =
      __$$_ProductFormStateCopyWithImpl<$Res>;
  @override
  $Res call({ProductCreateModel model, ProductFormStatus status});

  @override
  $ProductCreateModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$_ProductFormStateCopyWithImpl<$Res>
    extends _$ProductFormStateCopyWithImpl<$Res>
    implements _$$_ProductFormStateCopyWith<$Res> {
  __$$_ProductFormStateCopyWithImpl(
      _$_ProductFormState _value, $Res Function(_$_ProductFormState) _then)
      : super(_value, (v) => _then(v as _$_ProductFormState));

  @override
  _$_ProductFormState get _value => super._value as _$_ProductFormState;

  @override
  $Res call({
    Object? model = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ProductFormState(
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ProductCreateModel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductFormStatus,
    ));
  }
}

/// @nodoc

class _$_ProductFormState
    with DiagnosticableTreeMixin
    implements _ProductFormState {
  const _$_ProductFormState(
      {this.model = const ProductCreateModel(),
      this.status = ProductFormStatus.pure});

  @override
  @JsonKey()
  final ProductCreateModel model;
  @override
  @JsonKey()
  final ProductFormStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormState(model: $model, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductFormState'))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductFormState &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      __$$_ProductFormStateCopyWithImpl<_$_ProductFormState>(this, _$identity);
}

abstract class _ProductFormState implements ProductFormState {
  const factory _ProductFormState(
      {final ProductCreateModel model,
      final ProductFormStatus status}) = _$_ProductFormState;

  @override
  ProductCreateModel get model;
  @override
  ProductFormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ProductFormStateCopyWith<_$_ProductFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormEventCopyWith<$Res> {
  factory $ProductFormEventCopyWith(
          ProductFormEvent value, $Res Function(ProductFormEvent) then) =
      _$ProductFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFormEventCopyWithImpl<$Res>
    implements $ProductFormEventCopyWith<$Res> {
  _$ProductFormEventCopyWithImpl(this._value, this._then);

  final ProductFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProductFormEvent) _then;
}

/// @nodoc
abstract class _$$FormValueChangedEventCopyWith<$Res> {
  factory _$$FormValueChangedEventCopyWith(_$FormValueChangedEvent value,
          $Res Function(_$FormValueChangedEvent) then) =
      __$$FormValueChangedEventCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? description,
      double? price,
      Category? category,
      Region? region,
      City? city,
      List<String>? phones,
      List<File>? images});

  $CategoryCopyWith<$Res>? get category;
  $RegionCopyWith<$Res>? get region;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$FormValueChangedEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$FormValueChangedEventCopyWith<$Res> {
  __$$FormValueChangedEventCopyWithImpl(_$FormValueChangedEvent _value,
      $Res Function(_$FormValueChangedEvent) _then)
      : super(_value, (v) => _then(v as _$FormValueChangedEvent));

  @override
  _$FormValueChangedEvent get _value => super._value as _$FormValueChangedEvent;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? region = freezed,
    Object? city = freezed,
    Object? phones = freezed,
    Object? images = freezed,
  }) {
    return _then(_$FormValueChangedEvent(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
      phones: phones == freezed
          ? _value._phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>?,
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

class _$FormValueChangedEvent
    with DiagnosticableTreeMixin
    implements FormValueChangedEvent {
  const _$FormValueChangedEvent(
      {this.title,
      this.description,
      this.price,
      this.category,
      this.region,
      this.city,
      final List<String>? phones,
      final List<File>? images})
      : _phones = phones,
        _images = images;

  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final Category? category;
  @override
  final Region? region;
  @override
  final City? city;
  final List<String>? _phones;
  @override
  List<String>? get phones {
    final value = _phones;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<File>? _images;
  @override
  List<File>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormEvent.formValueChanged(title: $title, description: $description, price: $price, category: $category, region: $region, city: $city, phones: $phones, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductFormEvent.formValueChanged'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('region', region))
      ..add(DiagnosticsProperty('city', city))
      ..add(DiagnosticsProperty('phones', phones))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormValueChangedEvent &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.region, region) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other._phones, _phones) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(region),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(_phones),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$FormValueChangedEventCopyWith<_$FormValueChangedEvent> get copyWith =>
      __$$FormValueChangedEventCopyWithImpl<_$FormValueChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return formValueChanged(
        title, description, price, category, region, city, phones, images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return formValueChanged?.call(
        title, description, price, category, region, city, phones, images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (formValueChanged != null) {
      return formValueChanged(
          title, description, price, category, region, city, phones, images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return formValueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return formValueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (formValueChanged != null) {
      return formValueChanged(this);
    }
    return orElse();
  }
}

abstract class FormValueChangedEvent implements ProductFormEvent {
  const factory FormValueChangedEvent(
      {final String? title,
      final String? description,
      final double? price,
      final Category? category,
      final Region? region,
      final City? city,
      final List<String>? phones,
      final List<File>? images}) = _$FormValueChangedEvent;

  String? get title;
  String? get description;
  double? get price;
  Category? get category;
  Region? get region;
  City? get city;
  List<String>? get phones;
  List<File>? get images;
  @JsonKey(ignore: true)
  _$$FormValueChangedEventCopyWith<_$FormValueChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageEventCopyWith<$Res> {
  factory _$$PickImageEventCopyWith(
          _$PickImageEvent value, $Res Function(_$PickImageEvent) then) =
      __$$PickImageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
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
    return 'ProductFormEvent.pickImage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductFormEvent.pickImage'));
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
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
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
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class PickImageEvent implements ProductFormEvent {
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
    extends _$ProductFormEventCopyWithImpl<$Res>
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
    return 'ProductFormEvent.pickImageCamera()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ProductFormEvent.pickImageCamera'));
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
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return pickImageCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return pickImageCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
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
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return pickImageCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return pickImageCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (pickImageCamera != null) {
      return pickImageCamera(this);
    }
    return orElse();
  }
}

abstract class PickImageCameraEvent implements ProductFormEvent {
  const factory PickImageCameraEvent() = _$PickImageCameraEvent;
}

/// @nodoc
abstract class _$$RemoveImageEventCopyWith<$Res> {
  factory _$$RemoveImageEventCopyWith(
          _$RemoveImageEvent value, $Res Function(_$RemoveImageEvent) then) =
      __$$RemoveImageEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$$RemoveImageEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$RemoveImageEventCopyWith<$Res> {
  __$$RemoveImageEventCopyWithImpl(
      _$RemoveImageEvent _value, $Res Function(_$RemoveImageEvent) _then)
      : super(_value, (v) => _then(v as _$RemoveImageEvent));

  @override
  _$RemoveImageEvent get _value => super._value as _$RemoveImageEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$RemoveImageEvent(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveImageEvent
    with DiagnosticableTreeMixin
    implements RemoveImageEvent {
  const _$RemoveImageEvent(this.index);

  @override
  final int index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormEvent.removeImage(index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductFormEvent.removeImage'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImageEvent &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$RemoveImageEventCopyWith<_$RemoveImageEvent> get copyWith =>
      __$$RemoveImageEventCopyWithImpl<_$RemoveImageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return removeImage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return removeImage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class RemoveImageEvent implements ProductFormEvent {
  const factory RemoveImageEvent(final int index) = _$RemoveImageEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveImageEventCopyWith<_$RemoveImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPhoneEventCopyWith<$Res> {
  factory _$$AddPhoneEventCopyWith(
          _$AddPhoneEvent value, $Res Function(_$AddPhoneEvent) then) =
      __$$AddPhoneEventCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$$AddPhoneEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$AddPhoneEventCopyWith<$Res> {
  __$$AddPhoneEventCopyWithImpl(
      _$AddPhoneEvent _value, $Res Function(_$AddPhoneEvent) _then)
      : super(_value, (v) => _then(v as _$AddPhoneEvent));

  @override
  _$AddPhoneEvent get _value => super._value as _$AddPhoneEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_$AddPhoneEvent(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPhoneEvent with DiagnosticableTreeMixin implements AddPhoneEvent {
  const _$AddPhoneEvent(this.phone);

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormEvent.addPhone(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductFormEvent.addPhone'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPhoneEvent &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$AddPhoneEventCopyWith<_$AddPhoneEvent> get copyWith =>
      __$$AddPhoneEventCopyWithImpl<_$AddPhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return addPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return addPhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (addPhone != null) {
      return addPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return addPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return addPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (addPhone != null) {
      return addPhone(this);
    }
    return orElse();
  }
}

abstract class AddPhoneEvent implements ProductFormEvent {
  const factory AddPhoneEvent(final String phone) = _$AddPhoneEvent;

  String get phone;
  @JsonKey(ignore: true)
  _$$AddPhoneEventCopyWith<_$AddPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletePhoneEventCopyWith<$Res> {
  factory _$$DeletePhoneEventCopyWith(
          _$DeletePhoneEvent value, $Res Function(_$DeletePhoneEvent) then) =
      __$$DeletePhoneEventCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$$DeletePhoneEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$DeletePhoneEventCopyWith<$Res> {
  __$$DeletePhoneEventCopyWithImpl(
      _$DeletePhoneEvent _value, $Res Function(_$DeletePhoneEvent) _then)
      : super(_value, (v) => _then(v as _$DeletePhoneEvent));

  @override
  _$DeletePhoneEvent get _value => super._value as _$DeletePhoneEvent;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_$DeletePhoneEvent(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeletePhoneEvent
    with DiagnosticableTreeMixin
    implements DeletePhoneEvent {
  const _$DeletePhoneEvent(this.phone);

  @override
  final String phone;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormEvent.deletePhone(phone: $phone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductFormEvent.deletePhone'))
      ..add(DiagnosticsProperty('phone', phone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePhoneEvent &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$DeletePhoneEventCopyWith<_$DeletePhoneEvent> get copyWith =>
      __$$DeletePhoneEventCopyWithImpl<_$DeletePhoneEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return deletePhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return deletePhone?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (deletePhone != null) {
      return deletePhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return deletePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return deletePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (deletePhone != null) {
      return deletePhone(this);
    }
    return orElse();
  }
}

abstract class DeletePhoneEvent implements ProductFormEvent {
  const factory DeletePhoneEvent(final String phone) = _$DeletePhoneEvent;

  String get phone;
  @JsonKey(ignore: true)
  _$$DeletePhoneEventCopyWith<_$DeletePhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitFormEventCopyWith<$Res> {
  factory _$$SubmitFormEventCopyWith(
          _$SubmitFormEvent value, $Res Function(_$SubmitFormEvent) then) =
      __$$SubmitFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitFormEventCopyWithImpl<$Res>
    extends _$ProductFormEventCopyWithImpl<$Res>
    implements _$$SubmitFormEventCopyWith<$Res> {
  __$$SubmitFormEventCopyWithImpl(
      _$SubmitFormEvent _value, $Res Function(_$SubmitFormEvent) _then)
      : super(_value, (v) => _then(v as _$SubmitFormEvent));

  @override
  _$SubmitFormEvent get _value => super._value as _$SubmitFormEvent;
}

/// @nodoc

class _$SubmitFormEvent
    with DiagnosticableTreeMixin
    implements SubmitFormEvent {
  const _$SubmitFormEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductFormEvent.submit()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductFormEvent.submit'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitFormEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)
        formValueChanged,
    required TResult Function() pickImage,
    required TResult Function() pickImageCamera,
    required TResult Function(int index) removeImage,
    required TResult Function(String phone) addPhone,
    required TResult Function(String phone) deletePhone,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? title,
            String? description,
            double? price,
            Category? category,
            Region? region,
            City? city,
            List<String>? phones,
            List<File>? images)?
        formValueChanged,
    TResult Function()? pickImage,
    TResult Function()? pickImageCamera,
    TResult Function(int index)? removeImage,
    TResult Function(String phone)? addPhone,
    TResult Function(String phone)? deletePhone,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FormValueChangedEvent value) formValueChanged,
    required TResult Function(PickImageEvent value) pickImage,
    required TResult Function(PickImageCameraEvent value) pickImageCamera,
    required TResult Function(RemoveImageEvent value) removeImage,
    required TResult Function(AddPhoneEvent value) addPhone,
    required TResult Function(DeletePhoneEvent value) deletePhone,
    required TResult Function(SubmitFormEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FormValueChangedEvent value)? formValueChanged,
    TResult Function(PickImageEvent value)? pickImage,
    TResult Function(PickImageCameraEvent value)? pickImageCamera,
    TResult Function(RemoveImageEvent value)? removeImage,
    TResult Function(AddPhoneEvent value)? addPhone,
    TResult Function(DeletePhoneEvent value)? deletePhone,
    TResult Function(SubmitFormEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitFormEvent implements ProductFormEvent {
  const factory SubmitFormEvent() = _$SubmitFormEvent;
}

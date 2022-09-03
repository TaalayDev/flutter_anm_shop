import 'dart:io';

import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/data/models/city.dart';
import 'package:malbazar/data/models/product_create_model.dart';
import 'package:malbazar/data/models/region.dart';
import 'package:malbazar/data/repositories/product_repo.dart';

import '../data/models/category.dart';
import '../helpers/image_picker.dart';

part 'product_form_bloc.freezed.dart';

enum ProductFormStatus {
  pure,
  submitting,
  success,
  error;

  bool get isSubmitting => this == submitting;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

class ProductFormBloc extends Bloc<ProductFormEvent, ProductFormState> {
  ProductFormBloc(this._productRepo) : super(ProductFormState()) {
    on<FormValueChangedEvent>(_formValueChanged);
    on<PickImageEvent>(_pickImage);
    on<PickImageCameraEvent>(_pickCameraImage);
    on<RemoveImageEvent>(_removeImage);
    on<AddPhoneEvent>(_addPhone);
    on<DeletePhoneEvent>(_deletePhone);
    on<SubmitFormEvent>(_submit);
  }

  final ProductRepo _productRepo;

  void _formValueChanged(
    FormValueChangedEvent event,
    Emitter<ProductFormState> emit,
  ) {
    emit(state.copyWith.model(
      title: event.title ?? state.model.title,
      description: event.description ?? state.model.description,
      price: event.price ?? state.model.price,
      category: event.category ?? state.model.category,
      region: event.region ?? state.model.region,
      city: event.city ?? state.model.city,
    ));
  }

  void _pickImage(
    PickImageEvent event,
    Emitter<ProductFormState> emit,
  ) async {
    final result = await ImagePicker.pickImages(multiple: false);
    emit(state.copyWith.model(images: result));
  }

  void _pickCameraImage(
    PickImageCameraEvent event,
    Emitter<ProductFormState> emit,
  ) async {
    final result = await ImagePicker.pickImageFromCamera();
    if (result != null) {
      emit(state.copyWith.model(
        images: [...state.model.images ?? [], result],
      ));
    }
  }

  void _removeImage(
    RemoveImageEvent event,
    Emitter<ProductFormState> emit,
  ) {
    emit(state.copyWith.model(
      images: state.model.images?..removeAt(event.index),
    ));
  }

  void _addPhone(
    AddPhoneEvent event,
    Emitter<ProductFormState> emit,
  ) async {
    final phones = state.model.phones ?? [];
    if (phones.contains(event.phone)) {
      return;
    }

    emit(state.copyWith.model(phones: [...phones, event.phone]));
  }

  void _deletePhone(
    DeletePhoneEvent event,
    Emitter<ProductFormState> emit,
  ) async {
    emit(state.copyWith.model(
      phones: List.from(state.model.phones!)..remove(event.phone),
    ));
  }

  void _submit(
    SubmitFormEvent event,
    Emitter<ProductFormState> emit,
  ) async {
    emit(state.copyWith(status: ProductFormStatus.submitting));
    final response = await _productRepo.create(state.model);
    print('submit response ${response}');
    if (response.success) {
      emit(state.copyWith(status: ProductFormStatus.success));
    } else {
      emit(state.copyWith(status: ProductFormStatus.error));
    }
  }
}

@freezed
class ProductFormState with _$ProductFormState {
  const factory ProductFormState({
    @Default(ProductCreateModel()) final ProductCreateModel model,
    @Default(ProductFormStatus.pure) final ProductFormStatus status,
  }) = _ProductFormState;
}

@freezed
class ProductFormEvent with _$ProductFormEvent {
  const factory ProductFormEvent.formValueChanged({
    final String? title,
    final String? description,
    final double? price,
    final Category? category,
    final Region? region,
    final City? city,
    final List<String>? phones,
    final List<File>? images,
  }) = FormValueChangedEvent;
  const factory ProductFormEvent.pickImage() = PickImageEvent;
  const factory ProductFormEvent.pickImageCamera() = PickImageCameraEvent;
  const factory ProductFormEvent.removeImage(int index) = RemoveImageEvent;
  const factory ProductFormEvent.addPhone(String phone) = AddPhoneEvent;
  const factory ProductFormEvent.deletePhone(String phone) = DeletePhoneEvent;
  const factory ProductFormEvent.submit() = SubmitFormEvent;
}

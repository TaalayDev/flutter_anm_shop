import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/data/models/user.dart';

import '../../../../data/repositories/user_repo.dart';
import '../../../../helpers/image_picker.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required UserRepo userRepo, User? user})
      : _userRepo = userRepo,
        super(ProfileState(name: user?.name ?? '', user: user)) {
    on<PickImageEvent>(_pickImage);
    on<PickImageCameraEvent>(_pickCameraImage);
    on<ProfileUpdateEvent>(_updateUser);
    on<ProfileValuesChangedEvent>(
      (event, emit) => emit(state.copyWith(
        name: event.name ?? state.name,
      )),
    );
  }

  final UserRepo _userRepo;

  void _pickImage(
    PickImageEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await ImagePicker.pickImages(multiple: false);
    final image = result.isNotEmpty ? result[0] : null;
    emit(state.copyWith(image: image));
  }

  void _pickCameraImage(
    PickImageCameraEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final result = await ImagePicker.pickImageFromCamera();
    if (result != null) {
      emit(state.copyWith(image: result));
    }
  }

  void _updateUser(
    ProfileUpdateEvent event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final response = await _userRepo.update(
      name: state.name,
      image: state.image,
    );
    if (response.success) {
      emit(state.copyWith(
        status: FormzStatus.submissionSuccess,
        user: response.result,
      ));
    } else {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') final String name,
    final File? image,
    @Default(FormzStatus.pure) FormzStatus status,
    final User? user,
  }) = _ProfileState;
}

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.valuesChanged({String? name}) =
      ProfileValuesChangedEvent;
  const factory ProfileEvent.pickImage() = PickImageEvent;
  const factory ProfileEvent.pickImageCamera() = PickImageCameraEvent;
  const factory ProfileEvent.update() = ProfileUpdateEvent;
}

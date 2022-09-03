import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repositories/user_repo.dart';

part 'phone_verification_bloc.freezed.dart';

class PhoneVerificationBloc
    extends Bloc<PhoneVerificationEvent, PhoneVerificationState> {
  PhoneVerificationBloc(this._userRepo)
      : super(const PhoneVerificationState()) {
    on<_SetPhoneEvent>(_setPhone);
    on<_SetTermsAcceptedEvent>(_termsAccepted);
    on<_SetSmsCodeEvent>(_setSmsCode);
    on<_TimeExpiredEvent>(_timeExpired);
    on<_SendPhoneVerificationEvent>(_sendPhoneConfirmation);
    on<_VerifyPhoneEvent>(_verifyPhone);
  }

  final UserRepo _userRepo;

  void _setPhone(_SetPhoneEvent event, Emitter<PhoneVerificationState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _termsAccepted(
    _SetTermsAcceptedEvent event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(termsAccepted: event.accepted));
  }

  void _setSmsCode(
    _SetSmsCodeEvent event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(smsCode: event.code));
  }

  void _timeExpired(
    _TimeExpiredEvent event,
    Emitter<PhoneVerificationState> emit,
  ) {
    emit(state.copyWith(timerRunning: false));
  }

  void _sendPhoneConfirmation(
    _SendPhoneVerificationEvent event,
    Emitter<PhoneVerificationState> emit,
  ) async {
    if (!(state.phone == null || state.phone!.isEmpty)) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));

      final phone = state.phone!.replaceAll(' ', '');
      final completer = Completer();
      FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+' + phone,
        forceResendingToken: state.forceResendingToken,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (credential) {},
        verificationFailed: (error) {
          emit(state.copyWith(status: FormzStatus.submissionFailure));
          completer.complete(null);
        },
        codeSent: (verificationId, forceResendingToken) {
          emit(state.copyWith(
            codeSent: true,
            timerRunning: false,
            verificationId: verificationId,
            forceResendingToken: forceResendingToken,
            status: FormzStatus.pure,
          ));
          completer.complete(null);
        },
        codeAutoRetrievalTimeout: (verificationId) {
          emit(state.copyWith(
            timerRunning: false,
            verificationId: verificationId,
          ));
          completer.complete(null);
        },
      );
      await completer.future;
    }
  }

  void _verifyPhone(
    _VerifyPhoneEvent event,
    Emitter<PhoneVerificationState> emit,
  ) async {
    if (state.smsCode != null) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final credential = PhoneAuthProvider.credential(
          verificationId: state.verificationId!,
          smsCode: state.smsCode!,
        );

        final userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        emit(state.copyWith(
          status: FormzStatus.submissionSuccess,
          user: userCredential.user,
        ));
      } on FirebaseAuthException catch (e) {
        emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          error: e.toString(),
        ));
      }
    }
  }
}

@freezed
abstract class PhoneVerificationEvent with _$PhoneVerificationEvent {
  const factory PhoneVerificationEvent.setPhone(String? phone) = _SetPhoneEvent;
  const factory PhoneVerificationEvent.termsAccepted(bool accepted) =
      _SetTermsAcceptedEvent;
  const factory PhoneVerificationEvent.setSmsCode(String? code) =
      _SetSmsCodeEvent;
  const factory PhoneVerificationEvent.timeExpired() = _TimeExpiredEvent;
  const factory PhoneVerificationEvent.sendPhoneVerification() =
      _SendPhoneVerificationEvent;
  const factory PhoneVerificationEvent.verifyPhone() = _VerifyPhoneEvent;
}

@freezed
abstract class PhoneVerificationState with _$PhoneVerificationState {
  const factory PhoneVerificationState({
    @Default(FormzStatus.pure) final FormzStatus status,
    final String? error,
    final String? phone,
    final String? smsCode,
    @Default(false) final bool codeSent,
    @Default(false) final bool timerRunning,
    @Default(false) final bool termsAccepted,
    final int? forceResendingToken,
    final String? verificationId,
    final User? user,
  }) = _PhoneVerificationState;
}

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/repositories/user_repo.dart';
import '../../../../res/formz_inputs.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(UserRepo userRepo)
      : _userRepo = userRepo,
        super(const LoginState()) {
    on<LoginChangedEvent>(_loginChanged);
    on<PasswordChangedEvent>(_passwordChanged);
    on<LoginAttemptEvent>(_login);
  }

  final UserRepo _userRepo;

  void _loginChanged(
    LoginChangedEvent event,
    Emitter<LoginState> emit,
  ) {
    final login = Login.dirty(event.login);
    emit(state.copyWith(login: login));
  }

  void _passwordChanged(
    PasswordChangedEvent event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(
      password: password,
      status: Formz.validate([state.login, password]),
    ));
  }

  Future<void> _login(
    LoginAttemptEvent event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(
      status: Formz.validate([state.login, state.password]),
    ));
    print('invalid ${state.password.invalid}');
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final login = state.login.value.replaceAll(' ', '');
    final password = state.password.value;
    final response = await _userRepo.login(login, password);
    if (response.success) {
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } else {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FormzStatus.pure) final FormzStatus status,
    @Default(Login.pure()) final Login login,
    @Default(Password.pure()) final Password password,
  }) = _LoginState;
}

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginChanged(String login) = LoginChangedEvent;
  const factory LoginEvent.passwordChanged(String password) =
      PasswordChangedEvent;
  const factory LoginEvent.login() = LoginAttemptEvent;
}

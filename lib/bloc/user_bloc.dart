import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/user.dart';
import '../data/repositories/user_repo.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    bool isLogin = false,
    User? user,
    required UserRepo userRepo,
  })  : _userRepo = userRepo,
        super(UserState(isLogin: isLogin, user: user)) {
    on<UserLoginEvent>(_loginHandler);
    on<UserLogoutEvent>(_logoutHandler);
    on<UserFetchDetailsEvent>((event, emit) {});
    on<UserChangedEvent>(_userChanged);
  }

  final UserRepo _userRepo;

  void _loginHandler(UserLoginEvent event, Emitter<UserState> emit) {
    emit(state.copyWith(isLogin: true, user: event.user));
    add(const UserFetchDetailsEvent());
  }

  void _logoutHandler(UserLogoutEvent event, Emitter<UserState> emit) async {
    final response = await _userRepo.logout();
    emit(state.copyWith(isLogin: response.success));
  }

  void _userChanged(
    UserChangedEvent event,
    Emitter<UserState> emit,
  ) async {}
}

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(false) final bool isLogin,
    @Default(false) final bool isFetchingUser,
    final User? user,
  }) = _UserState;
}

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.login(User user) = UserLoginEvent;
  const factory UserEvent.logout() = UserLogoutEvent;
  const factory UserEvent.fetchDetails() = UserFetchDetailsEvent;
  const factory UserEvent.userChanged(User user) = UserChangedEvent;
}

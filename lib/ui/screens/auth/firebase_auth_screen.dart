import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../data/constants.dart';
import '../../../imports.dart';
import '../../shared_contents/control/countdown_timer.dart';
import '../../shared_contents/control/custom_checkbox.dart';
import '../../shared_contents/control/loadable_button.dart';
import '../../shared_contents/control/phone_field.dart';
import 'bloc/phone_verification_bloc.dart';

class FirebaseAuthScreen extends StatefulWidget {
  const FirebaseAuthScreen({Key? key}) : super(key: key);

  @override
  State<FirebaseAuthScreen> createState() => _FirebaseAuthScreenState();
}

class _FirebaseAuthScreenState extends State<FirebaseAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhoneVerificationBloc(context.read()),
      child: BlocListener<PhoneVerificationBloc, PhoneVerificationState>(
        listener: (context, state) {
          if (state.codeSent) {
            if (state.status == FormzStatus.submissionSuccess) {
              Navigator.pop(context, state.user);
            }
          } else if (state.status == FormzStatus.submissionFailure) {
            // TODO: Вывести ошибку
          }
        },
        listenWhen: (oldState, newState) => oldState.status != newState.status,
        child: BlocBuilder<PhoneVerificationBloc, PhoneVerificationState>(
          builder: (context, state) {
            return WillPopScope(
              onWillPop: () async {
                return true;
              },
              child: Scaffold(
                body: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            Assets.logo,
                            height: 184,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          state.codeSent ? 'Код из смс' : 'Номер телефона',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 8),
                        if (!state.codeSent) ...[
                          PhoneField(
                            onChanged: (value) {
                              context
                                  .read<PhoneVerificationBloc>()
                                  .add(PhoneVerificationEvent.setPhone(value));
                            },
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              CustomCheckbox(
                                initialValue: false,
                                onChanged: (newValue) {
                                  context
                                      .read<PhoneVerificationBloc>()
                                      .add(PhoneVerificationEvent.termsAccepted(
                                        newValue,
                                      ));
                                },
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Я принимаю условия',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: context.appTheme.secondTextColor,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    'Пользовательского соглашения',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: context.theme.primaryColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ] else
                          PinCodeTextField(
                            appContext: context,
                            length: 6,
                            obscureText: false,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.underline,
                              fieldHeight: 50,
                              fieldWidth: 40,
                              activeFillColor: Colors.white,
                            ),
                            backgroundColor: Colors.transparent,
                            animationDuration:
                                const Duration(milliseconds: 300),
                            onChanged: (value) {
                              context.read<PhoneVerificationBloc>().add(
                                  PhoneVerificationEvent.setSmsCode(value));
                            },
                          ),
                        const SizedBox(height: 20),
                        LoadableButton(
                          loading:
                              state.status == FormzStatus.submissionInProgress,
                          text:
                              state.codeSent ? 'Подтвердить' : 'continue'.tr(),
                          onPressed: () {
                            if (!state.codeSent) {
                              if (state.termsAccepted) {
                                context.read<PhoneVerificationBloc>().add(
                                    const PhoneVerificationEvent
                                        .sendPhoneVerification());
                              }
                            } else {
                              context.read<PhoneVerificationBloc>().add(
                                  const PhoneVerificationEvent.verifyPhone());
                            }
                          },
                        ),
                        if (state.codeSent) ...[
                          const SizedBox(height: 30),
                          Center(
                            child: TextButton(
                              onPressed: state.timerRunning
                                  ? null
                                  : () {
                                      context.read<PhoneVerificationBloc>().add(
                                          const PhoneVerificationEvent
                                              .sendPhoneVerification());
                                    },
                              child: const Text(
                                'Отправить код заново',
                              ),
                            ),
                          ),
                          if (state.timerRunning) ...[
                            CountDownTimer(
                              duration: const Duration(seconds: 60),
                              running: state.timerRunning,
                              whenTimeExpires: () {
                                context.read<PhoneVerificationBloc>().add(
                                    const PhoneVerificationEvent.timeExpired());
                              },
                              countDownFormatter: (seconds) =>
                                  '0:${seconds < 10 ? '0' : ''}',
                            ),
                          ]
                        ],
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

/*
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneCont = TextEditingController();
  final passwordCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(context.read()),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {},
        // listenWhen: (oldState, newState) => oldState.status != newState.status,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      Assets.logo,
                      height: 184,
                    ),
                  ),
                  const SizedBox(height: 60),
                  const _PhoneField(),
                  const SizedBox(height: 15),
                  const _PasswordField(),
                  const SizedBox(height: 20),
                  const _SubmitButton(),
                  const SizedBox(height: 45),
                  const _ResetPasswordButton(),
                  const SizedBox(height: 30),
                  const SizedBox(height: 30),
                  const _SignUp(),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ResetPasswordButton extends StatelessWidget {
  const _ResetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'cant sign in'.tr(),
        style: TextStyle(color: context.appTheme.secondTextColor),
      ),
    );
  }
}

class _PhoneField extends StatelessWidget {
  const _PhoneField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => PhoneField(
        onChanged: (value) {
          context.read<LoginBloc>().add(LoginChangedEvent(value));
        },
        errorText: state.login.invalid ? 'Заполните поле' : null,
      ),
    );
  }
}

class _PasswordField extends StatelessWidget {
  const _PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return PasswordField(
          hintText: 'password'.tr(),
          errorText: state.password.invalid ? 'Заполните поле' : null,
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChangedEvent(value));
          },
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => LoadableButton(
        text: 'sign in'.tr().toUpperCase(),
        loading: state.status == FormzStatus.submissionInProgress,
        onPressed: () {
          context.read<LoginBloc>().add(LoginAttemptEvent());
        },
      ),
    );
  }
}

class _SignUp extends StatelessWidget {
  const _SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'dont have a profile?'.tr(),
          style: TextStyle(color: context.appTheme.secondTextColor),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'sign up'.tr(),
            style: const TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}
*/
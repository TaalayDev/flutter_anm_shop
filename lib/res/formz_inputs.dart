import 'package:formz/formz.dart' show FormzInput;

enum EmailValidationError { invalid, empty }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  EmailValidationError? validator(String? value) {
    return _emailRegExp.hasMatch(value ?? '')
        ? null
        : EmailValidationError.invalid;
  }
}

enum PasswordValidationError { invalid, empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');

  const Password.dirty([String value = '']) : super.dirty(value);

  static final _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  PasswordValidationError? validator(String? value) {
    return value != null && value.isNotEmpty
        ? null
        : PasswordValidationError.invalid;
  }
}

enum LoginValidationError { invalid, empty }

class Login extends FormzInput<String, LoginValidationError> {
  const Login.pure() : super.pure('');

  const Login.dirty([String value = '']) : super.dirty(value);

  static final RegExp _emailRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  LoginValidationError? validator(String? value) {
    return value != null && value.isNotEmpty
        ? null
        : LoginValidationError.invalid;
  }
}

enum StringValidationError { invalid, empty }

class StringForm extends FormzInput<String, LoginValidationError> {
  const StringForm.pure() : super.pure('');

  const StringForm.dirty([String value = '']) : super.dirty(value);

  static final RegExp _regExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  LoginValidationError? validator(String? value) {
    return value != null && value.isNotEmpty
        ? null
        : LoginValidationError.invalid;
  }
}

enum ResetCodeValidationError { invalid, empty }

class ResetCode extends FormzInput<String, LoginValidationError> {
  const ResetCode.pure() : super.pure('');

  const ResetCode.dirty([String value = '']) : super.dirty(value);

  static final RegExp _regExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  @override
  LoginValidationError? validator(String? value) {
    return value != null && value.length == 6
        ? null
        : LoginValidationError.invalid;
  }
}

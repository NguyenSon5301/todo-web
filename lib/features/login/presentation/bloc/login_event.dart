part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.init() = LoginInitEvent;
  const factory LoginEvent.pressLoginButton() = LoginPressLoginButtonEvent;
  const factory LoginEvent.nextPage() = LoginNextPageEvent;
  const factory LoginEvent.onChangeFields() = LoginOnChangeFieldsEvent;
  const factory LoginEvent.pressForgotpasswordTextButton() =
      LoginPressForgotPasswordTextButtonEvent;
  const factory LoginEvent.pressSignUpTextButton() =
      LoginPressSignUpTextButtonEvent;
  const factory LoginEvent.checkEnableLoginButton() =
      CheckEnableForLoginButtonEvent;
}

part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.init() = ForgotPasswordInitEvent;
  const factory ForgotPasswordEvent.pressForgotPasswordButton() =
      ForgotPasswordPressForgotPasswordButtonEvent;
  const factory ForgotPasswordEvent.nextPage() = ForgotPasswordNextPageEvent;
  const factory ForgotPasswordEvent.onChangeFields() =
      ForgotPasswordOnChangeFieldsEvent;

  const factory ForgotPasswordEvent.checkEnableForgotPasswordButton() =
      CheckEnableForForgotPasswordButtonEvent;
}

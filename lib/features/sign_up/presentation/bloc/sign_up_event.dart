part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.init() = SignUpInitEvent;
  const factory SignUpEvent.pressSignUpButton() = SignUpPressSignUpButtonEvent;
  const factory SignUpEvent.nextPage() = SignUpNextPageEvent;
  const factory SignUpEvent.onChangeFields() = SignUpOnChangeFieldsEvent;
  const factory SignUpEvent.checkEnableSignUpButton() =
      CheckEnableForSignUpButtonEvent;
}

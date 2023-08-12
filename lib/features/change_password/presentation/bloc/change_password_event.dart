part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.init() = ChangePasswordInitEvent;
  const factory ChangePasswordEvent.pressChangePasswordButton() =
      ChangePasswordPressChangePasswordButtonEvent;
  const factory ChangePasswordEvent.onChangeFields() =
      ChangePasswordOnChangeFieldsEvent;
  const factory ChangePasswordEvent.checkEnableChangePasswordButton() =
      CheckEnableForChangePasswordButtonEvent;
}

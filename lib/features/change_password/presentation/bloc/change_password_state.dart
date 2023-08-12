part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool checkRightFields,
    AppException? exception,
    AppException? passwordOldException,
    AppException? passwordNewException,
    AppException? passwordNewAgainException,
  }) = _ChangePasswordState;
}

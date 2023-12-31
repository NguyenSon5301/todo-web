part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(false) bool isLoading,
    @Default(false) bool checkRightFields,
    AppException? exception,
    AppException? emailException,
  }) = _ForgotPasswordState;
}

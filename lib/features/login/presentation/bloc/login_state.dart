part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool checkRightFields,
    AppException? exception,
    AppException? emailException,
    AppException? passwordException,
  }) = _LoginState;
}

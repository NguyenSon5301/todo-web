part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(false) bool isLoading,
    @Default(false) bool checkRightFields,
    AppException? exception,
    AppException? emailException,
    AppException? passwordException,
    AppException? passwordAgainException,
  }) = _SignUpState;
}

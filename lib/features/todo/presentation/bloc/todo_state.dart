part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState({
    @Default(false) bool isLoading,
    @Default(false) bool checkRightFields,
    AppException? exception,
    AppException? emailException,
    AppException? passwordException,
  }) = _TodoState;
}

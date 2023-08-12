part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.init() = TodoInitEvent;
  const factory TodoEvent.pressTodoButton() = TodoPressTodoButtonEvent;
  const factory TodoEvent.nextPage() = TodoNextPageEvent;
  const factory TodoEvent.onChangeFields() = TodoOnChangeFieldsEvent;

  const factory TodoEvent.pressOnDoneButton({
    required String idTodo,
    required String field,
    required bool data,
  }) = TodoPressOnDoneButtonEvent;
  const factory TodoEvent.pressOnDeleteButton({
    required String idTodo,
    required String title,
  }) = TodoPressOnDeleteButtonEvent;
  const factory TodoEvent.pressOnEditButton({
    required String idTodo,
    required String title,
    required String description,
    required DateTime time,
  }) = TodoPressOnEditButtonEvent;
  const factory TodoEvent.pressOnAddButton({
    required String title,
    required String description,
    required DateTime time,
  }) = TodoPressOnAddButtonEvent;
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../entities/entities.dart';
import '../../../../utils/utils.dart';
import '../../domain/usecase/add_todo_usecase.dart';
import '../../domain/usecase/delete_todo_usecase.dart';
import '../../domain/usecase/edit_todo_usecase.dart';
import '../../domain/usecase/update_todo_usecase.dart';

part 'todo_bloc.freezed.dart';
part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc({
    required this.navigator,
  }) : super(const TodoState()) {
    on<TodoInitEvent>(_onInit);
    on<TodoPressTodoButtonEvent>(_onPressTodoEvent);
    on<TodoOnChangeFieldsEvent>(_onChangeFieldsEvent);
    on<TodoPressOnDoneButtonEvent>(_pressOnDoneButtonEvent);
    on<TodoPressOnDeleteButtonEvent>(_pressOnDeleteButtonEvent);
    on<TodoPressOnEditButtonEvent>(_pressOnEditButtonEvent);
    on<TodoPressOnAddButtonEvent>(_pressOnAddButtonEvent);

    on<TodoNextPageEvent>(_nextPageHandle);
  }
  late final UpdateTodoDoneDataUsecase updateTodoDataUsecase;
  late final DeleteTodoDataUsecase deleteTodoDataUsecase;
  late final EditTodoDataUsecase editTodoDataUsecase;
  late final AddTodoDataUsecase addTodoDataUsecase;

  final AppNavigator navigator;

  @override
  Future<void> close() {
    return super.close();
  }
}

extension EventHandle on TodoBloc {
  void _onInit(TodoInitEvent event, Emitter<TodoState> emitter) {
    updateTodoDataUsecase = UpdateTodoDoneDataUsecase();
    deleteTodoDataUsecase = DeleteTodoDataUsecase();
    editTodoDataUsecase = EditTodoDataUsecase();
    addTodoDataUsecase = AddTodoDataUsecase();
  }

  Future<void> _onPressTodoEvent(
    TodoPressTodoButtonEvent event,
    Emitter<TodoState> emitter,
  ) async {
    // final submitTodo = await updateTodoDataUsecase.updateTodoDataUsecase(
    //     email: emailController.value.toString(),
    //     password: passwordController.value.toString());
    // submitTodo.fold((l) => emitter(state.copyWith(exception: l)), (r) {
    //   add(const TodoEvent.nextPage());
    // });
  }

  Future<void> _nextPageHandle(
    TodoNextPageEvent event,
    Emitter<TodoState> emitter,
  ) async {
    await navigator.push(
      screen: const ScreenType.splash(),
    );
  }

  Future<void> _onChangeFieldsEvent(
    TodoOnChangeFieldsEvent event,
    Emitter<TodoState> emitter,
  ) async {}

  Future<void> _pressOnDoneButtonEvent(
    TodoPressOnDoneButtonEvent event,
    Emitter<TodoState> emitter,
  ) async {
    final updateTodoDone =
        await updateTodoDataUsecase.updateTodoDoneDataUsecase(
      idTodo: event.idTodo,
      field: event.field,
      data: event.data,
    );
    updateTodoDone.fold((l) => emitter(state.copyWith(exception: l)), (r) {});
  }

  Future<void> _pressOnDeleteButtonEvent(
    TodoPressOnDeleteButtonEvent event,
    Emitter<TodoState> emitter,
  ) async {
    final deleteTodoDone = await deleteTodoDataUsecase.deleteTodoDataUsecase(
      idTodo: event.idTodo,
    );
    deleteTodoDone.fold((l) => emitter(state.copyWith(exception: l)), (r) {
      showAppSnackbar(
        message: '${StringManager.deleteInform}${event.title}',
        type: SnackBarType.information,
      );
    });
  }

  Future<void> _pressOnEditButtonEvent(
    TodoPressOnEditButtonEvent event,
    Emitter<TodoState> emitter,
  ) async {
    final editTodoDataResult = await editTodoDataUsecase.editTodoDataUsecase(
      idTodo: event.idTodo,
      description: event.description,
      time: event.time,
      title: event.title,
    );
    editTodoDataResult.fold((l) => emitter(state.copyWith(exception: l)), (r) {
      showAppSnackbar(
        message: 'Update successfully!!!',
        type: SnackBarType.information,
      );
    });
  }

  Future<void> _pressOnAddButtonEvent(
    TodoPressOnAddButtonEvent event,
    Emitter<TodoState> emitter,
  ) async {
    final addTodoDataResult = await addTodoDataUsecase.addTodoDataUsecase(
      description: event.description,
      time: event.time,
      title: event.title,
    );
    addTodoDataResult.fold((l) => emitter(state.copyWith(exception: l)), (r) {
      showAppSnackbar(
        message: 'Add Task Successfully!!!',
        type: SnackBarType.information,
      );
    });
  }
}

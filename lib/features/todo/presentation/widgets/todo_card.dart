import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../../common/common.dart';
import '../../../../common/components/dialog/change_todo_info_dialog.dart';
import '../../../../common/components/dialog/notification_dialog.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/singleton/todo/todo_singleton.dart';
import '../bloc/todo_bloc.dart';

class TodoCardWidget extends StatelessWidget {
  final String idTodo;
  final String title;
  final String description;
  final DateTime time;
  final bool done;
  final TodoBloc bloc;
  Function(bool?)? onChanged;
  Function(BuildContext)? onPressedDelete;
  TodoCardWidget({
    required this.idTodo,
    required this.title,
    required this.done,
    required this.description,
    required this.time,
    required this.bloc,
    required this.onChanged,
    required this.onPressedDelete,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            onPressed: onPressedDelete,
            icon: Icons.delete,
            backgroundColor: AppColors.red.withOpacity(0.5),
          )
        ],
      ),
      child: GestureDetector(
        onTap: () async {
          await showDialog<bool>(
            context: bloc.navigator.current.context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return NotificationDialog(
                title: title,
                description: description,
                iconWidget: const Icon(Icons.task_alt),
                onPressButtonSubmit: () {},
                buttonTitleSubmit: StringManager.ok,
              );
            },
          );
        },
        child: Card(
          elevation: 8.scaled,
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 6,
          ).scaled,
          child: SizedBox(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ).scaled,
              leading: Checkbox(
                onChanged: onChanged,
                value: done,
              ),
              title: AppText(
                title,
                AppTextStyles.body16Regular.copyWith(
                  decoration: done ? TextDecoration.lineThrough : null,
                ),
              ),
              trailing: IconButton(
                onPressed: () async {
                  final result = await showDialog<bool>(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return ChangeTodoInfoDialog(
                        dataDescriptionInit: description,
                        dataTitleInit: title,
                        time: time,
                        title: StringManager.updateTodoInfor,
                      );
                    },
                  );
                  if (result == false) {
                    return;
                  }
                  bloc.add(
                    TodoEvent.pressOnEditButton(
                      idTodo: idTodo,
                      title: TodoSingleton.ins.title,
                      description: TodoSingleton.ins.description,
                      time: TodoSingleton.ins.time,
                    ),
                  );
                },
                icon: const Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/components/dialog/delete_todo_dialog.dart';
import '../../../../common/singleton/todo/todo_singleton.dart';
import '../../../../services/database/database_service.dart';
import '../../../../utils/utils.dart';
import '../bloc/todo_bloc.dart';
import 'todo_card.dart';

class TodoWidget extends StatefulWidget {
  const TodoWidget({super.key});

  @override
  State<TodoWidget> createState() => _TodoState();
}

class _TodoState extends State<TodoWidget> {
  late TodoBloc _bloc;
  DatabaseService db = DatabaseService();

  @override
  void initState() {
    _bloc = BlocProvider.of<TodoBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      listener: (context, state) {
        if (state.exception != null) {
          showAppSnackbar(
            message: state.exception.toString(),
            type: SnackBarType.error,
          );
        }
      },
      builder: (context, state) {
        return Background(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: WillPopScope(
                  child: Scaffold(
                    floatingActionButton: FloatingActionButton(
                      onPressed: () async {
                        final result = await showDialog<bool>(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return const AddTodoInfoDialog();
                          },
                        );
                        if (result == false) {
                          return;
                        }
                        _bloc.add(
                          TodoEvent.pressOnAddButton(
                            title: TodoSingleton.ins.title,
                            description: TodoSingleton.ins.description,
                            time: TodoSingleton.ins.time,
                          ),
                        );
                      },
                      child: const Icon(Icons.add_task),
                    ),
                    backgroundColor: AppColors.transparent,
                    body: StreamBuilder<QuerySnapshot>(
                      stream: db.getTodoUser(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          final data = snapshot.data.docs;
                          // String formattedDate =
                          //     DateFormat('yyyy-MM-dd').format(d);

                          return GroupedListView<dynamic, String>(
                            elements: data,
                            groupBy: (element) =>
                                DateFormat('yyyy-MM-dd').format(
                              DateTime.fromMillisecondsSinceEpoch(
                                element['time'].millisecondsSinceEpoch,
                              ),
                            ),
                            groupSeparatorBuilder: (String value) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text(
                                      DateFormat('MMM d, yyyy')
                                          .format(DateTime.parse(value)),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  if (DateFormat('MMM d, yyyy')
                                          .format(DateTime.parse(value)) ==
                                      DateFormat('MMM d, yyyy')
                                          .format(DateTime.now())) ...[
                                    AppText(
                                      '(Now)',
                                      AppTextStyles.body16Bold.copyWith(
                                        color: AppColors.blueLight,
                                      ),
                                    )
                                  ]
                                ],
                              );
                            },
                            itemBuilder: (c, element) {
                              bool value = element['done'];
                              return TodoCardWidget(
                                idTodo: element['id'],
                                title: element['title'],
                                description: element['description'],
                                time: DateTime.fromMillisecondsSinceEpoch(
                                  element['time'].millisecondsSinceEpoch,
                                ),
                                bloc: _bloc,
                                onPressedDelete: (context) async {
                                  final result = await showDialog<bool>(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return DeleteTaskDialog(
                                        title: element['title'],
                                      );
                                    },
                                  );
                                  if (result == false) {
                                    return;
                                  }
                                  _bloc.add(
                                    TodoEvent.pressOnDeleteButton(
                                      idTodo: element['id'],
                                      title: element['title'],
                                    ),
                                  );
                                },
                                onChanged: (value) {
                                  _bloc.add(
                                    TodoEvent.pressOnDoneButton(
                                      idTodo: element['id'],
                                      field: 'done',
                                      data: !value!,
                                    ),
                                  );
                                },
                                done: value,
                              );
                            },
                            itemComparator: (item1, item2) =>
                                item1['title'].compareTo(item2['title']),
                            useStickyGroupSeparators: true,
                            floatingHeader: true,
                            order: GroupedListOrder.DESC,
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                  onWillPop: () async {
                    final exitStatus = onWillPop();
                    if (exitStatus) {
                      exit(0);
                    }
                    return false;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool onWillPop() {
    return true;
  }
}

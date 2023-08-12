import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../binding/todo_binding.dart';
import '../bloc/todo_bloc.dart';
import '../widgets/todo_widget.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late TodoBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoBloc>(
      create: (context) =>
          TodoBinding.createBloc(context)..add(const TodoEvent.init()),
      child: const TodoWidget(),
    );
  }
}

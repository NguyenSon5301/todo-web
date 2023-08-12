import 'package:flutter/material.dart';

import '../../../../common/navigator/navigator.dart';
import '../bloc/todo_bloc.dart';

class TodoBinding {
  static TodoBloc createBloc(BuildContext context) {
    return TodoBloc(
      navigator: AppNavigator.fromContext(context),
    );
  }
}

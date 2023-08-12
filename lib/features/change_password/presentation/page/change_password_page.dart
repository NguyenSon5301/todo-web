import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../binding/change_password_binding.dart';
import '../bloc/change_password_bloc.dart';
import '../widgets/change_password_widget.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  late ChangePasswordBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangePasswordBloc>(
      create: (context) => ChangePasswordBinding.createBloc(context)
        ..add(const ChangePasswordEvent.init()),
      child: const ChangePasswordWidget(),
    );
  }
}

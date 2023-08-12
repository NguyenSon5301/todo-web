import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../binding/login_binding.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) =>
          LoginBinding.createBloc(context)..add(const LoginEvent.init()),
      child: const LoginWidget(),
    );
  }
}

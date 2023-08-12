import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../binding/sign_up_binding.dart';
import '../bloc/sign_up_bloc.dart';
import '../widgets/sign_up_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late SignUpBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (context) =>
          SignUpBinding.createBloc(context)..add(const SignUpEvent.init()),
      child: const SignUpWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../binding/forgot_password_binding.dart';
import '../bloc/forgot_password_bloc.dart';
import '../widgets/forgot_password_widget.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late ForgotPasswordBloc bloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (context) => ForgotPasswordBinding.createBloc(context)
        ..add(const ForgotPasswordEvent.init()),
      child: const ForgotPasswordWidget(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../common/navigator/navigator.dart';
import '../../data/login_repository_impl.dart';
import '../../domain/usecase/submit_login_usecase.dart';
import '../bloc/login_bloc.dart';

class LoginBinding {
  static LoginBloc createBloc(BuildContext context) {
    final repository = LoginRepositoryImpl();
    return LoginBloc(
      navigator: AppNavigator.fromContext(context),
      submitDataUsecase: LoginSubmitDataUsecase(repository),
    );
  }
}

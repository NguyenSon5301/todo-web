import 'package:flutter/material.dart';

import '../../../../common/navigator/navigator.dart';
import '../../data/forgot_password_repository_impl.dart';
import '../../domain/usecase/submit_forgot_password_usecase.dart';
import '../bloc/forgot_password_bloc.dart';

class ForgotPasswordBinding {
  static ForgotPasswordBloc createBloc(BuildContext context) {
    final repository = ForgotPasswordRepositoryImpl();
    return ForgotPasswordBloc(
      navigator: AppNavigator.fromContext(context),
      submitDataUsecase: ForgotPasswordSubmitDataUsecase(repository),
    );
  }
}

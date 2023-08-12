import 'package:flutter/material.dart';

import '../../../../common/navigator/navigator.dart';
import '../../data/sign_up_repository_impl.dart';
import '../../domain/usecase/submit_sign_up_usecase.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpBinding {
  static SignUpBloc createBloc(BuildContext context) {
    final repository = SignUpRepositoryImpl();
    return SignUpBloc(
      navigator: AppNavigator.fromContext(context),
      submitDataUsecase: SignUpSubmitDataUsecase(repository),
    );
  }
}

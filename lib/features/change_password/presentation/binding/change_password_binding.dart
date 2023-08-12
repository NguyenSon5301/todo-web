import 'package:flutter/material.dart';

import '../../../../common/navigator/navigator.dart';
import '../../data/change_password_repository_impl.dart';
import '../../domain/usecase/check_password_usecase.dart';
import '../../domain/usecase/submit_change_password_usecase.dart';
import '../bloc/change_password_bloc.dart';

class ChangePasswordBinding {
  static ChangePasswordBloc createBloc(BuildContext context) {
    final repository = ChangePasswordRepositoryImpl();
    return ChangePasswordBloc(
      navigator: AppNavigator.fromContext(context),
      submitDataUsecase: ChangePasswordSubmitDataUsecase(repository),
      checkPasswordIsRightUseCase: CheckPasswordUserCase(repository),
    );
  }
}

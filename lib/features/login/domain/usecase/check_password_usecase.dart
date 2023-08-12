import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../../../../utils/utils.dart';

class LoginPassWordDataUsecase {
  Either<AppException, bool> checkPassword({
    required String password,
  }) {
    if (password.trim().isEmpty) {
      return Left(EmptyPassWordFieldException());
    } else if (!PasswordValidate().hasMinLength(password, 8)) {
      return Left(PasswordEnoughCharacterException(number: 8));
    }
    return const Right(true);
  }
}

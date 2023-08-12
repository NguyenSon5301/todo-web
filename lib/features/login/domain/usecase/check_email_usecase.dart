import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../../../../utils/utils.dart';

class LoginEmailDataUsecase {
  Either<AppException, bool> checkEmail({
    required String email,
  }) {
    if (email.trim().isEmpty) {
      return Left(EmptyEmailFieldException());
    } else if (Validate.email(email) != null) {
      return Left(NotEmailTypeException());
    }
    return const Right(true);
  }
}

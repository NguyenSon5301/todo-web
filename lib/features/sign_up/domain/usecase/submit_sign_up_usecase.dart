import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../repository/sign_up_repository_interface.dart';

class SignUpSubmitDataUsecase {
  final ISignUpRepository repository;
  SignUpSubmitDataUsecase(this.repository);
  Future<Either<AppException, bool>> submitSignUp({
    required String email,
    required String password,
  }) async {
    final result = await repository.signUpByEmail(
      email: email.trim(),
      password: password.trim(),
    );
    if (result.uid == null) {
      return Left(AppUnknownException(exceptionString: result.code!));
    }
    return const Right(true);
  }
}

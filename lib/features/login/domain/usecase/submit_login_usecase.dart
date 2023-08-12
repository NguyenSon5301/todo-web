import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../repository/login_repository_interface.dart';

class LoginSubmitDataUsecase {
  final ILoginRepository repository;
  LoginSubmitDataUsecase(this.repository);
  Future<Either<AppException, bool>> submitLogin({
    required String email,
    required String password,
  }) async {
    final result = await repository.loginByEmail(
      email: email.trim(),
      password: password.trim(),
    );
    if (result.uid == null) {
      return Left(AppUnknownException(exceptionString: result.code!));
    }
    return const Right(true);
  }
}

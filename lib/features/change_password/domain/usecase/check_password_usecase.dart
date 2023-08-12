import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../repository/change_password_repository_interface.dart';

class CheckPasswordUserCase {
  final IChangePasswordRepository repository;
  CheckPasswordUserCase(this.repository);
  Future<Either<AppException, bool>> checkPassword({
    required String password,
  }) async {
    final result = await repository.checkPassword(
      password.trim(),
    );
    if (!result) {
      return Left(
        AppUnknownException(exceptionString: 'Old Password is wrong'),
      );
    }
    return const Right(true);
  }
}

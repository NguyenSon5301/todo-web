import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../repository/change_password_repository_interface.dart';

class ChangePasswordSubmitDataUsecase {
  final IChangePasswordRepository repository;
  ChangePasswordSubmitDataUsecase(this.repository);
  Future<Either<AppException, bool>> submitChangePassword({
    required String password,
  }) async {
    final result = await repository.changePassword(
      password: password.trim(),
    );
    if (!result) {
      return Left(AppUnknownException(exceptionString: ''));
    }
    return const Right(true);
  }
}

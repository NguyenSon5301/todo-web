import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../repository/forgot_password_repository_interface.dart';

class ForgotPasswordSubmitDataUsecase {
  final IForgotPasswordRepository repository;
  ForgotPasswordSubmitDataUsecase(this.repository);
  Future<Either<AppException, bool>> submitForgotPassword({
    required String email,
  }) async {
    final result = await repository.submitForgotPassword(
      email: email.trim(),
    );
    if (result) {
      return const Right(true);
    } else {
      return Left(AppUnknownException(exceptionString: ''));
    }
  }
}

import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../../data/todo_repository_impl.dart';

class UpdateTodoDoneDataUsecase {
  final repository = TodoRepositoryImpl();
  Future<Either<AppException, bool>> updateTodoDoneDataUsecase({
    required String idTodo,
    required String field,
    required bool data,
  }) async {
    final result = await repository.updateInfoTodoDone(idTodo, field, data);
    if (result) {
      return Right(result);
    } else {
      return Left(AppUnknownException(exceptionString: ''));
    }
  }
}

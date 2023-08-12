import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../../data/todo_repository_impl.dart';

class DeleteTodoDataUsecase {
  final repository = TodoRepositoryImpl();
  Future<Either<AppException, bool>> deleteTodoDataUsecase({
    required String idTodo,
  }) async {
    final result = await repository.deleteTodo(
      idTodo,
    );
    if (result) {
      return Right(result);
    } else {
      return Left(AppUnknownException(exceptionString: ''));
    }
  }
}

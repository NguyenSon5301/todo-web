import 'package:dartz/dartz.dart';

import '../../../../entities/entities.dart';
import '../../data/todo_repository_impl.dart';

class EditTodoDataUsecase {
  final repository = TodoRepositoryImpl();
  Future<Either<AppException, bool>> editTodoDataUsecase({
    required String idTodo,
    required String title,
    required String description,
    required DateTime time,
  }) async {
    final result = await repository.editTodo(idTodo, title, description, time);
    if (result) {
      return Right(result);
    } else {
      return Left(AppUnknownException(exceptionString: ''));
    }
  }
}

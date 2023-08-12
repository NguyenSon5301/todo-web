abstract class ITodoRepository {
  Future<bool> updateInfoTodoDone(String idTodo, String field, bool data);
  Future<bool> deleteTodo(
    String idTodo,
  );
  Future<bool> editTodo(
    String idTodo,
    String title,
    String description,
    DateTime time,
  );
  Future<bool> addTodo(
    String title,
    String description,
    DateTime time,
  );
}

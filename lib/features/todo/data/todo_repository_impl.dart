import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../common/singleton/user/user_singleton.dart';
import '../domain/repository/todo_repository_interface.dart';
import 'package:uuid/uuid.dart';

class TodoRepositoryImpl implements ITodoRepository {
  @override
  Future<bool> updateInfoTodoDone(
      String idTodo, String field, bool data) async {
    final documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(UserInfoManager.ins.email)
        .collection('Todos')
        .doc(idTodo);

    final add = <String, bool>{field: !data};
    return documentReference.update(add).then((value) async {
      return true;
    }).catchError((onError) {
      return false;
    });
  }

  @override
  Future<bool> deleteTodo(
    String idTodo,
  ) async {
    final documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(UserInfoManager.ins.email)
        .collection('Todos')
        .doc(idTodo);
    return documentReference.delete().then((value) async {
      return true;
    }).catchError((onError) {
      return false;
    });
  }

  @override
  Future<bool> editTodo(
    String idTodo,
    String title,
    String description,
    DateTime time,
  ) async {
    final documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(UserInfoManager.ins.email)
        .collection('Todos')
        .doc(idTodo);
    final add = <String, dynamic>{
      'title': title,
      'description': description,
      'time': Timestamp.fromDate(time)
    };

    return documentReference.update(add).then((value) async {
      return true;
    }).catchError((onError) {
      return false;
    });
  }

  @override
  Future<bool> addTodo(
    String title,
    String description,
    DateTime time,
  ) async {
    const idTodo = Uuid();
    final id = idTodo.v4();
    final documentReference = FirebaseFirestore.instance
        .collection('Users')
        .doc(UserInfoManager.ins.email)
        .collection('Todos')
        .doc(id);
    final add = <String, dynamic>{
      'title': title,
      'description': description,
      'time': Timestamp.fromDate(time),
      'done': false,
      'id': id,
    };

    return documentReference.set(add).then((value) async {
      return true;
    }).catchError((onError) {
      return false;
    });
  }
}

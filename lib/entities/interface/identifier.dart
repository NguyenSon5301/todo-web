abstract class Identifier {
  String get id;
}

extension ListIdentifier<T extends Identifier> on List<T> {
  List<T> removeWhereIds(List<String> ids) {
    return [...this]..removeWhere((element) => ids.contains(element.id));
  }
  
  List<T> removeWhereObject(List<T> objects) {
    final ids = objects.map((e) => e.id).toList();
    return removeWhereIds(ids);
  }

  int indexOfId(String id) {
    return indexWhere(
      (element) => element.id == id,
    );
  }

  int indexOfObject(T object) {
    return indexOfId(object.id);
  }

  List<T> appendAndReplace(T object, {bool putIfAbsent = true}) {
    final newList = [...this];
    final index = newList.indexOfObject(object);
    if (index >= 0) {
      newList[index] = object;
    } else {
      if (putIfAbsent) {
        newList.add(object);
      }
    }
    return newList;
  }

  List<T> appendAndReplaceObjects(List<T> objects, {bool putIfAbsent = true}) {
    final newList = [...this];
    for (final element in objects) {
      final index = newList.indexOfObject(element);
      if (index >= 0) {
        newList[index] = element;
      } else {
        if (putIfAbsent) {
          newList.add(element);
        }
      }
    }
    return newList;
  }
}

abstract class Deletable {
  bool? get isDeleted;
}

extension ListDeletable<T extends Deletable> on List<T> {
  List<T> removeDeleted() {
    return [...this]..removeWhere((element) => (element.isDeleted ?? false) == true);
  }
}

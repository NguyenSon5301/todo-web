abstract class UpdateCreateInterface {
  DateTime? get updatedAt;
  DateTime? get createdAt;
}

extension ListUpdateCreateInterface<T extends UpdateCreateInterface> on List<T> {
  List<T> sortUpdatedDate({bool descending = true}) {
    return [...this]..sort((a, b) {
        if (a.updatedAt == null || b.updatedAt == null) {
          return 0;
        }
        if (descending) {
          return b.updatedAt!.compareTo(a.updatedAt!);
        } else {
          return a.updatedAt!.compareTo(b.updatedAt!);
        }
      });
  }

  List<T> sortCreatedDate({bool descending = true}) {
    return [...this]..sort((a, b) {
        if (a.createdAt == null || b.createdAt == null) {
          return 0;
        }
        if (descending) {
          return b.createdAt!.compareTo(a.createdAt!);
        } else {
          return a.createdAt!.compareTo(b.createdAt!);
        }
      });
  }
}

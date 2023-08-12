class TodoSingleton {
  TodoSingleton._();
  static final _ins = TodoSingleton._();
  static TodoSingleton get ins => _ins;
  String title = '';
  String description = '';
  DateTime time = DateTime.now();
}

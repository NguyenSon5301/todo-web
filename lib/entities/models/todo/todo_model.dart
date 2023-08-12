class Todo {
  String title;
  String description;
  DateTime? time;
  bool done;

  Todo({
    required this.title,
    required this.description,
    required this.time,
    required this.done,
  });
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      time: json['time'] != null
          ? DateTime.fromMillisecondsSinceEpoch(
              json['time'].millisecondsSinceEpoch,
            )
          : null,
      done: json['done'] ?? false,
    );
  }
}

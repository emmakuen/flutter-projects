class Task {
  final String name;
  bool? isDone;
  Task({required this.name, this.isDone = false});

  void setDone(bool? value) {
    isDone = value;
  }
}

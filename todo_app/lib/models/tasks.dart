import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class Tasks extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Healthy breakfast'),
    Task(name: 'Fun and simple pleasures'),
    Task(name: 'Adequate sleep'),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
  int get taskCount => _tasks.length;

  void addTask(String taskName) {
    final Task newTask = Task(name: taskName);
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(task, bool? isDone) {
    task.setDone(isDone);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

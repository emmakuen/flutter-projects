import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.tasks,
    required this.setDone,
  }) : super(key: key);

  final Function setDone;
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: kCardPadding,
        child: ListView.builder(
          itemBuilder: (context, idx) {
            return TaskTile(
              isSelected: tasks[idx].isDone,
              setSelected: (value) => setDone(idx, value),
              taskName: tasks[idx].name,
            );
          },
          itemCount: tasks.length,
        ),
        decoration: kCardDecoration,
      ),
    );
  }
}

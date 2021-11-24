import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/components/task_tile.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/tasks.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.setDone,
  }) : super(key: key);

  final Function setDone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: kCardPadding,
        child: Consumer<Tasks>(
          builder: (context, tasksData, child) {
            return ListView.builder(
              itemBuilder: (context, idx) {
                final Task task = tasksData.tasks[idx];
                return TaskTile(
                  isSelected: task.isDone,
                  setSelected: (bool? value) =>
                      tasksData.updateTask(task, value),
                  taskName: task.name,
                );
              },
              itemCount: tasksData.taskCount,
            );
          },
        ),
        decoration: kCardDecoration,
      ),
    );
  }
}

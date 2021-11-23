import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isDone = false;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        title: Text(
          'hi',
          style: TextStyle(
              decoration:
                  isDone ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        value: false,
        groupValue: 'tasks',
        onChanged: (value) => print(value));
  }
}

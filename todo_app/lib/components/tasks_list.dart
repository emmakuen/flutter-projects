import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/components/task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.isDone,
  }) : super(key: key);

  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: kCardPadding,
        child: ListView(
          children: [
            TaskTile(),
            TaskTile(),
            TaskTile(),
          ],
        ),
        decoration: kCardDecoration,
      ),
    );
  }
}

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
  bool? isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration:
                isSelected! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isSelected,
        onChanged: (bool? value) => setState(() => isSelected = value),
        activeColor: kPrimaryColor,
      ),
    );
  }
}

// RadioListTile(
// title: Text(
// 'hi',
// style: TextStyle(
// decoration: isSelected
// ? TextDecoration.lineThrough
//     : TextDecoration.none),
// ),
// value: '',
// selected: isSelected,
// groupValue: 'tasks',
// onChanged: (value) => setState(() => isSelected = !isSelected));

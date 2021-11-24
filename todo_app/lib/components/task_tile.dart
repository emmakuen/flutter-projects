import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {Key? key,
      this.isSelected = false,
      required this.setSelected,
      required this.taskName})
      : super(key: key);
  final bool? isSelected;
  final String taskName;
  final Function setSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration:
                isSelected! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isSelected,
        onChanged: (bool? value) => setSelected(value),
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

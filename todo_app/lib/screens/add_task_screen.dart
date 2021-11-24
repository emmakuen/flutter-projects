import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/tasks.dart';
import 'package:todo_app/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    Key? key,
  }) : super(key: key);
  late String newTask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kModalTopColor,
      child: Container(
        decoration: kCardDecoration,
        padding: kModalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              kAddTaskTitle,
              style: kAddTaskTitleStyle,
              textAlign: TextAlign.center,
            ),
            TextField(
              style: kTextFieldTextStyle,
              textAlign: TextAlign.center,
              autofocus: true,
              decoration: kTextFieldDecoration,
              onChanged: (String value) {
                newTask = value;
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: Text(kAddButtonText, style: kButtonTextStyle),
              onPressed: () {
                context.read<Tasks>().addTask(newTask);
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                padding: kButtonPadding,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

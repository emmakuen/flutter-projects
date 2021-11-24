import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({Key? key, required this.setTasks}) : super(key: key);
  final Function setTasks;
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
                setTasks(newTask);
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

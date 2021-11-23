import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class AddTaskPopup extends StatelessWidget {
  const AddTaskPopup({Key? key}) : super(key: key);

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
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              child: Text(kAddButtonText, style: kButtonTextStyle),
              onPressed: () {},
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

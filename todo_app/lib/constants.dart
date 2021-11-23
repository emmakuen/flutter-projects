import 'package:flutter/material.dart';

Color kPrimaryColor = Colors.lightBlueAccent;
Color kSecondaryColor = Colors.white;
Color kModalTopColor = const Color(0xff757575);
String kAppName = 'Todo App';
String kAddTaskTitle = 'Add Task';
String kAddButtonText = 'Add';
EdgeInsets kTasksScreenPadding =
    const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0);

EdgeInsets kCardPadding = const EdgeInsets.symmetric(horizontal: 20.0);
EdgeInsets kModalPadding =
    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0);
EdgeInsets kButtonPadding =
    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

TextStyle kTitleStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 40.0,
  fontWeight: FontWeight.w700,
);
TextStyle kAddTaskTitleStyle = TextStyle(
  color: kPrimaryColor,
  fontSize: 30.0,
  fontWeight: FontWeight.w500,
);
TextStyle kTasksTotalStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 18.0,
);
TextStyle kButtonTextStyle = const TextStyle(fontSize: 20.0);
TextStyle kTextFieldTextStyle = const TextStyle(fontSize: 15.0);

BoxDecoration kCardDecoration = BoxDecoration(
  color: kSecondaryColor,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
);

InputDecoration kTextFieldDecoration = InputDecoration(
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
  ),
);

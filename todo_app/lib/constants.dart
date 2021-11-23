import 'package:flutter/material.dart';

Color kPrimaryColor = Colors.lightBlueAccent;
Color kSecondaryColor = Colors.white;
String kAppName = 'Todo App';
EdgeInsets kTasksScreenPadding =
    const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0);

EdgeInsets kCardPadding = const EdgeInsets.symmetric(horizontal: 20.0);
TextStyle kTitleStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 40.0,
  fontWeight: FontWeight.w700,
);

TextStyle kTasksTotalStyle = TextStyle(
  color: kSecondaryColor,
  fontSize: 18.0,
);

BoxDecoration kCardDecoration = BoxDecoration(
  color: kSecondaryColor,
  borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
);

import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Icon(Icons.list, size: 30.0, color: kPrimaryColor),
          backgroundColor: kSecondaryColor,
          radius: 30.0,
        ),
        SizedBox(height: 10.0),
        Text(kAppName, style: kTitleStyle),
        Text('12 tasks', style: kTasksTotalStyle),
      ],
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/avatar.png'),
            ),
            Text(
              'Emma',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                color: Colors.teal.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.teal.shade100),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+12 01 2345 6789",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              color: Colors.white,
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  "example@example.com",
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

// EdgeInsets variations
// EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0)   // Symmetric on y & x axis
// EdgeInsets.all(20.0)  // Margin of 20 on each side
// EdgeInsets.fromLTRB(30.0, 20.0, 10.0, 0)   // style each side differently
// EdgeInsets.only(left: 30.0)  // style only one side

// Column & Row Setups
// mainAxisSize: MainAxisSize.min   // limit height to its children
// verticalDirection: VerticalDirection.up    // move to bottom

// mainAxisAlignment: MainAxisAlignment.end   // align to bottom
// mainAxisAlignment: MainAxisAlignment.spaceEvenly   // space evenly
// mainAxisAlignment: MainAxisAlignment.spaceBetween   // space between

// crossAxisAlignment: CrossAxisAlignment.end   // align on the opposite axis
// crossAxisAlignment: CrossAxisAlignment.stretch   // stretch items

import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatefulWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  State<FlashChat> createState() => _FlashChatState();
}

class _FlashChatState extends State<FlashChat> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const WelcomeScreen();
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            initialRoute: WelcomeScreen.id,
            routes: {
              WelcomeScreen.id: (context) => const WelcomeScreen(),
              LoginScreen.id: (context) => const LoginScreen(),
              RegistrationScreen.id: (context) => const RegistrationScreen(),
              ChatScreen.id: (context) => const ChatScreen(),
            },
          );
        }
        return const WelcomeScreen();
      },
    );
  }
}

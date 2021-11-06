import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded playButton({int soundNumber = 1, Color color = Colors.blue}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () => playSound(soundNumber),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playButton(soundNumber: 1, color: Colors.redAccent),
              playButton(soundNumber: 2, color: Colors.orange),
              playButton(soundNumber: 3, color: Colors.yellow),
              playButton(soundNumber: 4, color: Colors.greenAccent),
              playButton(soundNumber: 5, color: Colors.tealAccent),
              playButton(soundNumber: 6, color: Colors.blue),
              playButton(soundNumber: 7, color: Colors.purpleAccent),
            ],
          ),
        ),
      ),
    );
  }
}

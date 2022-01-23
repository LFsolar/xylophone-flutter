import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey({Color color, int note}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            player.play('note$note.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Color(0xFFF8BBD0), note: 1),
              buildKey(color: Color(0xFFFCCCBC), note: 2),
              buildKey(color: Color(0xFFFFECB3), note: 3),
              buildKey(color: Color(0xFFF0F4C3), note: 4),
              buildKey(color: Color(0xFFB2DFDB), note: 5),
              buildKey(color: Color(0xFF81D4FA), note: 6),
              buildKey(color: Color(0xFFC5CAE9), note: 7),
            ],
          ),
        ),
      ),
    );
  }
}

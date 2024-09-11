import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                player.play(AssetSource('assets/note1.wav'));
              },
              child: Text('Play'),
            ),
          ),
        ),
      ),
    );
  }
}

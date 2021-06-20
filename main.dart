import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() => runApp(Xilofone());

class Xilofone extends StatefulWidget {

  @override
  _XilofoneState createState() => _XilofoneState();
}

class _XilofoneState extends State<Xilofone> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }


  Expanded buildKey({Color? color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
        ),
        onPressed: () async {
          await player.setAsset('assets/note$soundNumber.wav');
          player.play();

          Colors: 
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  buildKey (color: Colors.red, soundNumber:1),
                  buildKey (color: Colors.orange, soundNumber:2),
                  buildKey (color: Colors.yellow, soundNumber:3),
                  buildKey (color: Colors.green, soundNumber:4),
                  buildKey (color: Colors.teal, soundNumber:5),
                  buildKey (color: Colors.blue, soundNumber:6),
                  buildKey (color: Colors.purple, soundNumber:7),
            ],
          ))
      ),
    );
  }
}
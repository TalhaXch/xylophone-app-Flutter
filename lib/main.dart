// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Expanded soundfun(int filename, Color colors) {
    final player = AudioPlayer();

    return Expanded(
      child: GestureDetector(
        onTap: () => {
          player.play(
            AssetSource('note$filename.wav'),
          ),
        },
        child: Container(
          color: colors,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Xylophone App')),
        ),
        body: SafeArea(
          child: Center(
            child: Column(children: <Widget>[
              soundfun(1, Colors.red),
              soundfun(2, Colors.green),
              soundfun(3, Colors.teal),
              soundfun(4, Colors.lightBlue),
              soundfun(5, Colors.yellow),
              soundfun(6, Colors.orange),
              soundfun(7, Colors.lime),
            ]),
          ),
        ),
      ),
    );
  }
}

// main.dart
import 'package:flutter/material.dart';
import 'splash_screen.dart';

import 'package:audioplayers/audioplayers.dart';

void main() {
  AudioPlayer player = AudioPlayer(); // Initialize audioplayers
  runApp(MyApp(player: player));
}

class MyApp extends StatelessWidget {
  final AudioPlayer player;

  const MyApp({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spotify',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: SplashScreen(),
        );
    }
}
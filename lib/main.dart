import 'package:flutter/material.dart';
import 'package:flutter_mini/nowPlayingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NowPlayingScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mini/SingleSelectionFunctionality_RadioButtons/secondScreen.dart';
import 'package:flutter_mini/whatsApp/Home_screen.dart';
import 'package:flutter_mini/whatsApp/NavigationBar.dart';
import 'package:flutter_mini/SingleSelectionFunctionality_RadioButtons/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreenn());
  }
}

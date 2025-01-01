import 'package:flutter/material.dart';
import 'package:flutter_mini/26-12-2024/Views/LoginPage.dart';
import 'package:flutter_mini/26-12-2024/Widgets/TextformField.dart';
import 'package:flutter_mini/whatsApp/NavigationBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: WhatsAppNavigationBar());
  }
}

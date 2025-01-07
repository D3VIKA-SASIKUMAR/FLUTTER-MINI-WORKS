import 'package:flutter/material.dart';
import 'package:flutter_mini/7-01-2024/screen1.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 600) {
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => FirstPage()),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                width: screenWidth * 0.6,
                height: screenWidth * 0.4,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Flexible(
              child: Container(
                width: screenWidth * 0.6,
                height: screenWidth * 0.4,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

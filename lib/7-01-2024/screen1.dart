import 'package:flutter/material.dart';
import 'package:flutter_mini/7-01-2024/screen2.dart';

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 600) {
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SecondPage()),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                width: screenWidth * 0.4,
                height: screenWidth * 0.3,
                color: Colors.red,
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Container(
                width: screenWidth * 0.4,
                height: screenWidth * 0.3,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

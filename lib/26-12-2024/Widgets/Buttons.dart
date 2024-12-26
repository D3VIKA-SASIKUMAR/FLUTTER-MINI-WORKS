import 'package:flutter/material.dart';

class Butttons extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;

  const Butttons({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: Colors.white,
      ),
    );
  }
}

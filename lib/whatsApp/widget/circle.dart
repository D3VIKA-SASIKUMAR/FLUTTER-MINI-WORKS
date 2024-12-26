import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final double? radius;
  final Color? color;
  Widget? child;

  MyCircle({super.key, required this.radius, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: child,
    );
  }
}

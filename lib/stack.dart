import 'package:flutter/material.dart';

class Stacks extends StatefulWidget {
  const Stacks({super.key});

  @override
  State<Stacks> createState() => _StacksState();
}

class _StacksState extends State<Stacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            color: Colors.red,
            height: 320,
            width: 320,
          ),
          Positioned(
            top: 110,
            left: 100,
            child: Container(
              color: Colors.black,
              height: 250,
              width: 250,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              color: Colors.purple,
              height: 190,
              width: 190,
            ),
          )
        ]),
      ),
    );
  }
}

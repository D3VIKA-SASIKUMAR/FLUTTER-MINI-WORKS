import 'package:flutter/material.dart';

class My_Layout extends StatelessWidget {
  Widget web;
  Widget mobile;
  My_Layout({super.key, required this.mobile, required this.web});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return web;
      } else {
        return mobile;
      }
    });
  }
}

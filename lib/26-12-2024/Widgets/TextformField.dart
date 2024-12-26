import 'package:flutter/material.dart';

class Textformfieldd extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool obscureText;

  const Textformfieldd({
    super.key,
    this.labelText,
    this.hintText,
    this.validator,
    this.controller,
    this.obscureText = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
      validator: validator,
    );
  }
}

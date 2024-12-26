import 'package:flutter/material.dart';
import 'package:flutter_mini/26-12-2024/Services/validation.dart';
import 'package:flutter_mini/26-12-2024/Views/HomePage.dart';

import 'package:fluttertoast/fluttertoast.dart';

class LoginService {
  static Future<void> submit({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
    required TextEditingController usernameController,
    required TextEditingController passwordController,
  }) async {
    if (formKey.currentState!.validate()) {
      bool success = await Validationn.login(
        usernameController.text,
        passwordController.text,
      );

      if (success) {
        Fluttertoast.showToast(msg: 'Login successful!');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      } else {
        Fluttertoast.showToast(msg: 'Invalid username or password');
      }
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mini/26-12-2024/Services/validation.dart';
import 'package:flutter_mini/26-12-2024/Views/HomePage.dart';
import 'package:flutter_mini/26-12-2024/Widgets/Buttons.dart';
import 'package:flutter_mini/26-12-2024/Widgets/TextformField.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 215, 215, 209),
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Textformfieldd(
                  controller: _usernameController,
                  labelText: 'Username',
                  validator: (value) =>
                      Validationn.validateInput(value, 'Username'),
                ),
                const SizedBox(height: 20),
                Textformfieldd(
                  controller: _passwordController,
                  labelText: 'Password',
                  obscureText: true,
                  validator: (value) =>
                      Validationn.validateInput(value, 'Password'),
                ),
                const SizedBox(height: 20),
                Butttons(
                  text: 'Login',
                  onPressed: () => submit(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      bool success = await Validationn.login(
        _usernameController.text,
        _passwordController.text,
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

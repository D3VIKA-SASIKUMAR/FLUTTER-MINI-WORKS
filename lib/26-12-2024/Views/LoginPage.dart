import 'package:flutter/material.dart';
import 'package:flutter_mini/26-12-2024/Services/submit.dart';
import 'package:flutter_mini/26-12-2024/Services/validation.dart';

import 'package:flutter_mini/26-12-2024/Widgets/Buttons.dart';
import 'package:flutter_mini/26-12-2024/Widgets/TextformField.dart';

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
                  onPressed: () => LoginService.submit(
                    context: context,
                    formKey: _formKey,
                    usernameController: _usernameController,
                    passwordController: _passwordController,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

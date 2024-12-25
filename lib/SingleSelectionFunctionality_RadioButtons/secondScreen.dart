import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  String? _selectedOption;
  String? _selectedOption2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("66: What is the capital of France?",
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(height: 10),
              RadioListTile<String>(
                title: const Text("Berlin"),
                value: "Berlin",
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Madrid"),
                value: "Madrid",
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Paris"),
                value: "Paris",
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value;
                  });
                },
              ),
              RadioListTile<String>(
                  title: const Text("Poland"),
                  value: "Poland",
                  groupValue: _selectedOption,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  }),
              Row(
                children: [
                  Text("Q2: Who is the first Avenger?",
                      style: TextStyle(fontSize: 18)),
                ],
              ),
              SizedBox(height: 10),
              RadioListTile<String>(
                title: const Text("Iron Man"),
                value: "Iron Man",
                groupValue: _selectedOption2,
                onChanged: (value) {
                  setState(() {
                    _selectedOption2 = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Captain America"),
                value: "Captain America",
                groupValue: _selectedOption2,
                onChanged: (value) {
                  setState(() {
                    _selectedOption2 = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("hulk"),
                value: "hulk",
                groupValue: _selectedOption2,
                onChanged: (value) {
                  setState(() {
                    _selectedOption2 = value;
                  });
                },
              ),
              RadioListTile<String>(
                  title: const Text("Thor"),
                  value: "Thor",
                  groupValue: _selectedOption2,
                  onChanged: (value) {
                    setState(() {
                      _selectedOption2 = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

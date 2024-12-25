import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Dp extends StatefulWidget {
  const Dp({super.key});

  @override
  State<Dp> createState() => _DpState();
}

class _DpState extends State<Dp> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 14, 4, 61),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              SizedBox(
                width: 400,
              ),
              Text(
                "Change Dp",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: _image != null ? FileImage(_image!) : null,
                child: _image == null
                    ? Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey,
                      )
                    : null,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text("CHANGE DP"),
                onPressed: () {
                  _dialougebox(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _dialougebox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Choose one '),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              _imageFromGallery();
            },
            child: const Text(
              'Gallery',
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              _imageFromCamera();
            },
            child: const Text('Camera'),
          ),
        ],
      ),
    );
  }

  final ImagePicker _picker = ImagePicker();
  Future<void> _imageFromGallery() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _imageFromCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
}

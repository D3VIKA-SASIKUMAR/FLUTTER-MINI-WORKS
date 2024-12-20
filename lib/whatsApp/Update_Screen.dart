import 'package:flutter/material.dart';

class UpdateScreenWhatsApp extends StatefulWidget {
  const UpdateScreenWhatsApp({super.key});

  @override
  State<UpdateScreenWhatsApp> createState() => _UpdateScreenWhatsAppState();
}

class _UpdateScreenWhatsAppState extends State<UpdateScreenWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left: 1.0),
            child: Text(
              'Updates',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.qr_code,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.camera_enhance,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 19),
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Status',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.amber,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

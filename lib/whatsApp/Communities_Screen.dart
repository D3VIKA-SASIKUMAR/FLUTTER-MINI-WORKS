import 'package:flutter/material.dart';

class CommunitiesScreenWhatsApp extends StatefulWidget {
  const CommunitiesScreenWhatsApp({super.key});

  @override
  State<CommunitiesScreenWhatsApp> createState() =>
      _CommunitiesScreenWhatsAppState();
}

class _CommunitiesScreenWhatsAppState extends State<CommunitiesScreenWhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Communities',
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.qr_code,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.camera_enhance,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Stack(clipBehavior: Clip.none, children: <Widget>[
            Container(
              height: 70.0,
              width: 70.0,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              color: Color.fromARGB(255, 131, 130, 130),
              child: Icon(Icons.groups, color: Colors.white, size: 50.0),
            ),
            Positioned(
                top: 40.0,
                left: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                )),
            Positioned(
                top: 50.0,
                left: 55,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ))
          ]),
        ]),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallScreenWhatsApp extends StatefulWidget {
  const CallScreenWhatsApp({super.key});

  @override
  State<CallScreenWhatsApp> createState() => _CallScreenWhatsAppState();
}

class _CallScreenWhatsAppState extends State<CallScreenWhatsApp> {
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
              'Calls',
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
          padding: const EdgeInsets.all(1.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    Text(
                      'Favourites',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(CupertinoIcons.heart_fill, color: Colors.white),
                ),
                title: Text(
                  ' Add Favourite',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Row(
                  children: [
                    Text(
                      'Recents',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'TL',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    'Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'Ironman',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'Hulk',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'natasha',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'TL',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'TL',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
              ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(
                    'TL',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    ' Today,12:05 PM',
                    style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                  ),
                  trailing: Icon(Icons.phone)),
            ],
          ),
        ),
      ),
    );
  }
}

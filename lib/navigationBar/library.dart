import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library_Screen extends StatefulWidget {
  const Library_Screen({super.key});

  @override
  State<Library_Screen> createState() => _Library_ScreenState();
}

class _Library_ScreenState extends State<Library_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 237, 237),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        leading: Icon(
          Icons.account_circle,
          size: 50,
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Your Library',
            style: TextStyle(fontSize: 25),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('Liked Songs')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('K playlists')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('Trip mode')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text('Shokam')
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}

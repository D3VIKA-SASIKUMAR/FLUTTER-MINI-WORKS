import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mini/navigationBar/library.dart';
import 'package:flutter_mini/navigationBar/nowPlayingScreen.dart';
import 'package:flutter_mini/navigationBar/search.dart';

class NavigatingBar extends StatefulWidget {
  const NavigatingBar({super.key});

  @override
  State<NavigatingBar> createState() => _NavigatingBarState();
}

class _NavigatingBarState extends State<NavigatingBar> {
  int indexNum = 0;
  List tabWidgets = [
    NowPlayingScreen(),
    Search_Screen(),
    Library_Screen(),
    Text('hotlist'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        body: Center(
          child: tabWidgets.elementAt(indexNum),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            iconSize: 40,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department_sharp),
                label: 'Hotlist',
              ),
            ],
            currentIndex: indexNum,
            onTap: (int index) {
              setState(() {
                indexNum = index;
              });
            }),
      ),
    );
  }
}

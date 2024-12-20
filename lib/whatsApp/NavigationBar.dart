import 'package:flutter/material.dart';
import 'package:flutter_mini/whatsApp/Call_Screen.dart';
import 'package:flutter_mini/whatsApp/Communities_Screen.dart';
import 'package:flutter_mini/whatsApp/Home_screen.dart';
import 'package:flutter_mini/whatsApp/Update_Screen.dart';

class WhatsAppNavigationBar extends StatefulWidget {
  const WhatsAppNavigationBar({super.key});

  @override
  State<WhatsAppNavigationBar> createState() => _WhatsAppNavigationBarState();
}

class _WhatsAppNavigationBarState extends State<WhatsAppNavigationBar> {
  int indexNum = 0;
  List tabWidgets = [
    HomeScreenWhatsApp(),
    UpdateScreenWhatsApp(),
    CommunitiesScreenWhatsApp(),
    CallScreenWhatsApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: const Color.fromARGB(255, 216, 253, 210),
        selectedIndex: indexNum, // Bind the selected index
        onDestinationSelected: (int newIndex) {
          setState(() {
            indexNum = newIndex; // Update state on tab selection
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.chat,
              color: Color.fromARGB(255, 22, 100, 68),
            ),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.update,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: 'Updates',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.groups,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: 'Communities',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.phone,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            label: 'Calls',
          ),
        ],
      ),
      body: Center(
        child: tabWidgets.elementAt(indexNum), // Display selected tab widget
      ),
    );
  }
}

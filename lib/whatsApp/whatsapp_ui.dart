import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              color: const Color.fromARGB(255, 38, 152, 92),
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
      body: ListView(padding: EdgeInsets.all(8), children: [
        TextField(
          style: const TextStyle(color: Colors.black),
          cursorColor: Colors.black,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 246, 245, 243)),
              borderRadius: BorderRadius.circular(40),
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 246, 245, 243),
            hintText: 'Search..',
            hintStyle: TextStyle(color: const Color.fromARGB(255, 94, 97, 100)),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: const Color.fromARGB(255, 94, 97, 100),
          ),
        ),
        Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(children: <Widget>[
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 216, 253, 210)),
                  onPressed: () {},
                  child: Text(
                    'All',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 57, 110, 70)),
                  )),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 246, 245, 243)),
                  onPressed: () {},
                  child: Text(
                    'Unread',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 108, 109, 111)),
                  )),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 246, 245, 243)),
                  onPressed: () {},
                  child: Text(
                    'Groups',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 108, 109, 111)),
                  )),
            ]),
          )
        ]),
        SizedBox(
          height: 5,
        ),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'TL',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'deadline tommorrow!!!',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('8:41 pm')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'Boss ',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'You have to work!!',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('8:30 pm')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'Iron man',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'We need to visit Gotham..',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('8:25 pm')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'Groot',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'I am Groot',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('8:00 pm')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'Spideyyy',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'My web is not working ',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('4:00 PM')),
        ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(
              'Natasha',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              '@#@^&BITCH',
              style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
            ),
            trailing: Text('12:00 PM')),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(
            'ALICE OFFICE',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'SEND ME THE PROJEC..',
            style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
          ),
          trailing: Text('YESTERDAY'),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          // isExtended: true,
          child: Icon(Icons.add_comment),
          backgroundColor: const Color.fromARGB(255, 29, 171, 97),
          foregroundColor: Colors.white,
          onPressed: () {}),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        indicatorColor: const Color.fromARGB(255, 216, 253, 210),
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.chat,
                color: Color.fromARGB(255, 22, 100, 68),
              ),
              label: 'Chats'),
          NavigationDestination(
              icon: Icon(
                Icons.update,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              label: 'Updates'),
          NavigationDestination(
              icon: Icon(
                Icons.groups,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              label: 'Communities'),
          NavigationDestination(
              icon: Icon(
                Icons.phone,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              label: 'Calls'),
        ],
      ),
    );
  }
}

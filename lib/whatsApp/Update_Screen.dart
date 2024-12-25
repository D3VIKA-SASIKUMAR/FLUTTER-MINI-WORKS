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
            Row(
              children: [
                Text(
                  'Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(children: <Widget>[
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 242, 244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 170, left: 10),
                        child: Text(
                          'Add Status',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTELcUYPb4MtppEoFWa8b252z35DPjozU73Qg&s"),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 35,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: CircleAvatar(
                            radius: 13,
                            backgroundColor: Colors.green,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: <Widget>[
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 242, 244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 170, left: 10),
                        child: Text(
                          'Ironman',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 255, 26),
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTELcUYPb4MtppEoFWa8b252z35DPjozU73Qg&s"),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: <Widget>[
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 242, 244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 170, left: 10),
                        child: Text(
                          'hulk',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 255, 26),
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTELcUYPb4MtppEoFWa8b252z35DPjozU73Qg&s"),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(children: <Widget>[
                    Container(
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 241, 242, 244),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 170, left: 10),
                        child: Text(
                          'CaptainAmerica',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 0, 255, 26),
                        radius: 25,
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTELcUYPb4MtppEoFWa8b252z35DPjozU73Qg&s"),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 17,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRljPZAo_WetnC7v3HpCrABnNccHTCxb0ab_g&s"),
                ),
                title: Text(
                  'Netflix',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'Mismatched s3',
                  style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                ),
                trailing: Text('8:41 pm')),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo-APmwXJZF8XYXzQMEvbu9pILZprdihwg5A&s"),
                ),
                title: Text(
                  'PUBG',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'NEW SCRIMS',
                  style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                ),
                trailing: Text('8:30 pm')),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT9JsZDSznEDZ4P40-kz9nmFC4a4c7Dmvyow&s"),
                ),
                title: Text(
                  'Iron man',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'My new glasses guys',
                  style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                ),
                trailing: Text('8:25 pm')),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1nP8G6ixfkE07JoKIwRM6ly9PFe8bcrSjYA&s"),
                ),
                title: Text(
                  'Groot',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'I am Groot',
                  style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                ),
                trailing: Text('8:00 pm')),
            ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyqW3jw28rCtY4FlLg04p69L30-kJNGkSZwg&s"),
                ),
                title: Text(
                  'Spideyyy',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  'My web is not working ',
                  style: TextStyle(color: Color.fromARGB(255, 92, 93, 95)),
                ),
                trailing: Text('4:00 PM')),
          ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton.small(
              child: Icon(Icons.edit),
              backgroundColor: const Color.fromARGB(255, 230, 227, 227),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
                child: Icon(Icons.camera_alt_sharp),
                backgroundColor: const Color.fromARGB(255, 29, 171, 97),
                foregroundColor: Colors.white,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

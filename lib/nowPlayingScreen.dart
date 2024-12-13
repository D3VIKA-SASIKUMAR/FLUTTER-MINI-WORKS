import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class NowPlayingScreen extends StatefulWidget {
  const NowPlayingScreen({super.key});

  @override
  State<NowPlayingScreen> createState() => _NowPlayingScreenState();
}

class _NowPlayingScreenState extends State<NowPlayingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 237, 237),
        appBar: AppBar(
          leading: const Icon(Icons.keyboard_arrow_down_outlined),
          actions: const [
            Padding(
              padding: EdgeInsets.all(9.0),
              child: Icon(Icons.queue_music_outlined),
            ),
          ],
          title: const Text(
            'Now Playing',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/unsayable.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 70),
              const Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.heart,
                          color: Colors.black45,
                        ),
                        Text(
                          'Unsayable',
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.black45,
                        ),
                      ]),
                  SizedBox(height: 8),
                  Text(
                    'Brambles',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black38,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(clipBehavior: Clip.none, children: [
                    const Positioned(
                      child: Text('1:04'),
                      top: 80,
                      right: 340,
                    ),
                    Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage(
                            'images/Mwaveform.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      child: Text(
                        '2:52',
                        style: TextStyle(color: Colors.black45),
                      ),
                      top: 80,
                      left: 340,
                    ),
                  ]),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.shuffle,
                    color: Colors.black45,
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    icon: const Icon(
                      Icons.skip_previous,
                      color: Colors.black,
                    ),
                    iconSize: 36,
                    onPressed: () {},
                  ),
                  FloatingActionButton(
                    shape: const StadiumBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.skip_next,
                      color: Colors.black,
                    ),
                    iconSize: 36,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 16),
                  const Icon(
                    Icons.repeat,
                    color: Colors.black45,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pertemuan5/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  static final List<Widget> _pages = [
    const Icon(
      Icons.home,
      size: 100,
    ),
    const Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    const Icon(
      Icons.call,
      size: 100,
    ),
    const Icon(
      Icons.camera,
      size: 100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage('https://images.app.goo.gl/iiPQ8dKRHUUhhsQL7'),
              ),
              accountName: Text("Sophy Aw"),
              accountEmail: Text('2209106072'),
              decoration: BoxDecoration(color: Color.fromARGB(255, 9, 41, 56)),
            ),
            ListTile(
              leading: const Icon(Icons.maps_home_work),
              title: const Text('Location'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Cari'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("First Screen"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/account');
              },
              icon: const Icon(
                Icons.person_outline,
                size: 30,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/account');
              },
              icon: const Icon(
                Icons.settings,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: _pages.elementAt(_index),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Pindah Screen'),
      //     onPressed: () {
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) {
      //       //       return const Setting();
      //       //     },
      //       //   ),
      //       // );
      //       // Navigator.pushReplacement<void, void>(
      //       //   context,
      //       //   MaterialPageRoute<void>(
      //       //     builder: (BuildContext context) => const Setting(),
      //       //   ),
      //       // );
      //       Navigator.pushNamed(context, '/setting');
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Telpon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Camera",
          ),
        ],
      ),
    );
  }
}

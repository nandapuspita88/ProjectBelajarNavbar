import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  var _pages = <Widget>[
    Icon(Icons.phone, size: 200, color: Colors.white),
    Icon(Icons.camera, size: 200, color: Colors.white),
    Icon(Icons.message, size: 200, color: Colors.white),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Belajar Navbar"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: _pages.elementAt(_selectedNavbar)),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: ('Telephone'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: ('Picture'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: ('Inbox'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

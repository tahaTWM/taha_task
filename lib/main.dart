import 'package:create_project/bloodtestDetails.dart';
import 'package:flutter/material.dart';
import 'bloodtest.dart';
import './homepage.dart';
import 'lab.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 2;

  static List<Widget> _widgetOptions = <Widget>[
    Lab(),
    BoldCheck(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void changepage() {
    setState(() {
      _selectedIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grass_sharp,
              size: 33,
            ),
            label: 'المختبر',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dvr_sharp,
              size: 33,
            ),
            label: 'التحاليل',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.swap_vert_circle_outlined,
              size: 33,
            ),
            label: 'الرئيسية',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
        selectedLabelStyle:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelStyle:
            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

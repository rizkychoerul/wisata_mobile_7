import 'package:flutter/material.dart';
import 'package:wisata_mobile_7/screens/homescreen.dart';
import 'package:wisata_mobile_7/screens/kuliner.dart';
import 'package:wisata_mobile_7/screens/tentang.dart';
import 'package:wisata_mobile_7/screens/wisata.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Mobile',
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPage = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Homescreen(),
    Wisata(),
    Kuliner(),
    Tentang(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Wisata',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Kuliner',
            backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Tentang',
            backgroundColor: Colors.black
          ),
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: true,
      ),
    );
  }
}

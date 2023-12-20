import 'package:flutter/material.dart';
import 'package:green_house/pages/favorite_page.dart';
import 'package:green_house/pages/home_page.dart';
import 'package:green_house/pages/profile_page.dart';
import 'package:green_house/pages/scan_page.dart';
import 'package:green_house/pages/store_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    Favorite(),
    ScanPage(),
    StorePage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          showSelectedLabels: false,
          unselectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(size: 35.00),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.qr_code_scanner), label: "Scanner"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
          ]),
      body: pages[_currentIndex],
    );
  }
}

import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            print(value);
          },
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
    );
  }
}

import 'package:flutter/material.dart';
import 'package:green_house/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        scaffoldBackgroundColor: const Color.fromARGB(255, 157, 223, 201),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LandingPage(),
    );
  }
}

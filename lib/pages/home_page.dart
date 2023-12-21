import 'package:flutter/material.dart';
import 'package:green_house/widgets/home_category.dart';
import 'package:green_house/widgets/home_fliter.dart';
import 'package:green_house/widgets/home_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Map<String, dynamic>> categories = [
    {"id": 1, "name": "All"},
    {"id": 2, "name": "Indoor"},
    {"id": 3, "name": "Outdoor"},
    {"id": 4, "name": "Aromatic"},
    {"id": 5, "name": "Succulent"},
  ];

  Map<String, dynamic> selectedCategory = categories.first;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: [
                homeTitle(context),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                homeFilter(context),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                homeCategory(
                    context: context,
                    deviceHeight: deviceHeight,
                    categories: categories,
                    selectedCategory: selectedCategory,
                    onclick: (Map<String, dynamic> category) {
                      setState(() {
                        selectedCategory = category;
                      });
                    })
              ],
            )));
  }
}

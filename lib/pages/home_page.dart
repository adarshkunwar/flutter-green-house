import 'package:flutter/material.dart';
import 'package:green_house/models/product_model.dart';
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

  List<ProductModel> Product = [
    ProductModel(
        productName: "First Product",
        productImage:
            "https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavorite: false,
        category: 'category',
        price: 20.1),
    ProductModel(
        productName: "Second Product",
        productImage:
            "https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavorite: false,
        category: 'category',
        price: 20.1),
    ProductModel(
        productName: "Third Product",
        productImage:
            "https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavorite: false,
        category: 'category',
        price: 20.1),
    ProductModel(
        productName: "Fourth Product",
        productImage:
            "https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavorite: false,
        category: 'category',
        price: 20.1),
    ProductModel(
        productName: "Fifth Product",
        productImage:
            "https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        isFavorite: false,
        category: 'category',
        price: 20.1)
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
                    }),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Container(
                  height: deviceHeight * 0.3,
                  // color: Colors.red,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Card(
                          elevation: 3.0,
                          // color: Colors.white,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 5),
                            // margin: const EdgeInsets.only(left: 5),
                            width: deviceWidth * 0.4,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.red,
                                  child: SizedBox(
                                    // color: Colors.red,
                                    width: double.infinity,
                                    height: deviceHeight * 0.2,
                                    child: const Image(
                                      image: NetworkImage(
                                          'https://images.pexels.com/photos/4075551/pexels-photo-4075551.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  // height: deviceWidth * 0.35,
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            )));
  }
}

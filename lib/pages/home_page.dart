// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:green_house/models/product_model.dart';
import 'package:green_house/widgets/home_category.dart';
import 'package:green_house/widgets/home_fliter.dart';
import 'package:green_house/widgets/home_title.dart';
import 'package:green_house/widgets/product_card_collection.dart';

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

  List<ProductModel> product = [
    ProductModel(
        productName: "First Product",
        productImage:
            "https://images.pexels.com/photos/18926843/pexels-photo-18926843/free-photo-of-rough-volcanic-rock-formation.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
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
                productCardCollection(
                    context: context,
                    product: product,
                    selectedCategory: selectedCategory['name'],
                    onclick: (int index) {
                      setState(() {
                        product[index].isFavorite = !product[index].isFavorite;
                      });
                    }),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.005,
                      ),
                      SizedBox(
                        height: deviceWidth * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (_, index) {
                              return Card(
                                elevation: 5,
                                color: Colors.white,
                                child: Container(
                                  width: deviceWidth * 0.6,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  // height: deviceHeight * 0.2,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: deviceWidth * 0.25,
                                        // height: double.infinity,
                                        // color: Colors.red,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.network(
                                            product[index].productImage,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                product[index].category,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              Text(
                                                product[index].productName,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                '\$ ${product[index].price} ',
                                                style: const TextStyle(
                                                    fontSize: 22,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            )));
  }
}

import 'package:flutter/material.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Best Plants For \nOur Green House",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                        Positioned(
                          right: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: const Text(
                              "2",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 0.00,
                        child: Container(
                          height: 50,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          // width: 300,
                          child: (Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.grey[400],
                              ),
                              SizedBox(
                                width: deviceWidth * 0.02,
                              ),
                              Text(
                                "Search Plant",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[400],
                                ),
                              )
                            ],
                          )),
                          // color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.02,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.black,
                      splashColor: Theme.of(context).primaryColor,
                      onPressed: () {},
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: deviceHeight * 0.02,
                ),
                SizedBox(
                  height: deviceHeight * 0.06,
                  // color: Colors.red,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: categories
                          .map((e) => InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedCategory = e;
                                  });
                                },
                                child: Card(
                                  color: e == selectedCategory
                                      ? Theme.of(context).primaryColor
                                      : Colors.white,
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    child: Text(
                                      e["name"],
                                      style: TextStyle(
                                        color: e == selectedCategory
                                            ? Colors.white
                                            : Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ),
                              ))
                          .toList()),
                )
              ],
            )));
  }
}

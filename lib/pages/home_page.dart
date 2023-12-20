import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                )
              ],
            )));
  }
}

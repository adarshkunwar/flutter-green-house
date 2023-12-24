import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Store"), Text("...")],
            ),
            Container(
              height: deviceHeight * 0.9,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 15),
                      height: deviceHeight * 0.2,
                      color: Colors.blue,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            width: deviceWidth * 0.4,
                            child: Image.network(
                              "https://images.pexels.com/photos/12404067/pexels-photo-12404067.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                const Column(
                                  children: [
                                    Text(
                                      "Name",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text("category"),
                                    Text("rating"),
                                    Text("price"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("price"),
                                    FloatingActionButton(onPressed: () {})
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

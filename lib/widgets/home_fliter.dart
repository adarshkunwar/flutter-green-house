import 'package:flutter/material.dart';

Widget homeFilter(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  return Row(
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
  );
}

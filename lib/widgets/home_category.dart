import 'package:flutter/material.dart';

Widget homeCategory(
    {required BuildContext context,
    required double deviceHeight,
    required List<Map<String, dynamic>> categories,
    required Map<String, dynamic> selectedCategory,
    required Function onclick}) {
  return SizedBox(
    height: deviceHeight * 0.06,
    // color: Colors.red,
    child: ListView(
        scrollDirection: Axis.horizontal,
        children: categories
            .map((e) => InkWell(
                  onTap: () {
                    onclick(e);
                    // setState(() {
                    //   selectedCategory = e;
                    // });
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
  );
}

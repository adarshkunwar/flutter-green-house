import 'package:flutter/material.dart';
import 'package:green_house/models/product_model.dart';

Widget productCardCollection(
    {required context, required List<ProductModel> product}) {
  double deviceHeight = MediaQuery.of(context).size.height;
  double deviceWidth = MediaQuery.of(context).size.width;
  return SizedBox(
    height: deviceHeight * 0.32,
    // color: Colors.red,
    child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Card(
            elevation: 3.0,
            // color: Colors.white,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              // margin: const EdgeInsets.only(left: 5),
              width: deviceWidth * 0.4,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.red,
                        child: SizedBox(
                          // color: Colors.red,
                          width: double.infinity,
                          height: deviceHeight * 0.17,

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              product[index].productImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        // height: deviceWidth * 0.35,
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.favorite,
                            color: product[index].isFavorite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.all(2),
                        // color: Colors.blue,
                        height: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Name",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 12),
                            ),
                            Text(
                              product[index].productName,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Price",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey[400], fontSize: 12),
                            ),
                            Text(
                              "\$ ${product[index].price}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 40,
                              alignment: Alignment.center,
                              // color: Colors.yellow,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
                ],
              ),
            ),
          );
        }),
  );
}

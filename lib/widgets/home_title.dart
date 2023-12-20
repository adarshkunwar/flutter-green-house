import 'package:flutter/material.dart';

Widget homeTitle(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        "Best Plants For \nOur Green House",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
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
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          )
        ],
      )
    ],
  );
}

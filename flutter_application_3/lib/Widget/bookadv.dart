import 'package:flutter/material.dart';

Widget bookAdv(String imagepath, String name, String rating) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            width: 150,
            height: 225,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(imagepath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 15, 15, 0),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      Text(name)
    ],
  );
}

Widget bookAdvWithoutRating(String imagepath, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: 150,
        height: 225,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: AssetImage(imagepath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text(name)
    ],
  );
}
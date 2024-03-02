import 'package:flutter/material.dart';

Widget bulletCategory(IconData icon, String title) {
  return Card(
    shadowColor: Colors.black38,
    child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(172, 173, 173, 173),
            borderRadius: BorderRadius.circular(16.0)),
        width: 120,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon),
            Text(title),
          ],
        )),
  );
}
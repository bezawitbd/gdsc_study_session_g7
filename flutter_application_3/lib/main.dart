import 'package:flutter/material.dart';
import 'package:flutter_application_3/onboard.dart';
import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Onboard(),
      routes: {
        '/second': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
      },
    );
  }
}
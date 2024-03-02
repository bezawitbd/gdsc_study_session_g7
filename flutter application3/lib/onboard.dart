import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            lottie.asset('images/anima.json'),
            SizedBox(
              height: 20,
            ),
            const Text(
              "GDSC Bookstore",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
              child: const Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}
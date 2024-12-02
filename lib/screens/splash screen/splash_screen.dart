import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed("/home");
      },
    );
    return Scaffold(
      ///  this color is a back ground color
      backgroundColor: Colors.deepOrangeAccent.shade100,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 350,
              width: 350,
              child: Image(
                image: AssetImage('asset/image/logo.png'),
              ),
            ),
            Text(
              'Bhagavad Geeta',
              style: TextStyle(
                height: -2,
                fontSize: 35,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:full_app/screens/Login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shop,
              size: 84,
              color: Colors.redAccent,
            ),
            Text(
              "K-Mart",
              style: TextStyle(
                fontSize: 22,
                color: Colors.redAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}

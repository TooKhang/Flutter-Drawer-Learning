import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homestay_raya/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Homestay Raya",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

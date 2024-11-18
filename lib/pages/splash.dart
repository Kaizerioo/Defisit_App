import 'dart:async';
import 'package:defisit/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:defisit/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override 
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the LoginPage after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../asset/logo2-removebg-preview.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'DEFISIT',
              style: TextStyle(fontSize: 65, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
            ),
            const Text(
              'Smart Choice, Wise Spending',
              style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
            )
          ],
        ),
      ),
    );
  }
}

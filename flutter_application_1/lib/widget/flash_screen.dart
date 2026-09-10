import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/login_page.dart';

class Flashscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Flashscreen> createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6366F1), Color(0xFF4F46E5), Color(0xFF4338CA)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Icon(Icons.check),
            ),

            SizedBox(height: 16),
            Text(
              "Task Flow",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "Organize Your Task \nAchieve Your Goals",
              style: TextStyle(color: Colors.white),
            ),

            SizedBox(height: 60),
            CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

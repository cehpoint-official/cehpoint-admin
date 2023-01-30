import 'dart:async';

import 'package:flutter/material.dart';

import 'Dashboard/Dashboard.dart';

class MySplash_Screen extends StatefulWidget {
  const MySplash_Screen({super.key});

  @override
  State<MySplash_Screen> createState() => _MySplash_ScreenState();
}

class _MySplash_ScreenState extends State<MySplash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDashborad()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 150, top: 250),
        child: Column(
          children: [
            Image.asset(
              'Assets/logo.png',
            ),
            const SizedBox(
              height: 72,
            ),
            Image.asset('Assets/splashScreen2.png'),
          ],
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyDashborad()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 150.w, top: 250.h),
        child: Column(
          children: [
            Image.asset(
              'Assets/logo.png',
            ),
            SizedBox(
              height: 72.h,
            ),
            const CircularProgressIndicator(color: Color(0xff000000)),
            // Image.asset('Assets/splashScreen2.png'),
          ],
        ),
      ),
    );
  }
}

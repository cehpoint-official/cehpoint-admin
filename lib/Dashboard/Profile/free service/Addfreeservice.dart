import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Addfreeservice1.dart';

class Addfreeservice extends StatelessWidget {
  const Addfreeservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar( centerTitle: true,
        title: Text(
          'Add free service',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.sp,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'Profile');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 49.h, left: 42.w, right: 19.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Page link',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addfreeservice1(),
                        ),
                      );
                    },
                    child: Image.asset('Assets/pencil.png'))
              ],
            ),
            SizedBox(
              height: 21.h,
            ),
            Text(
              'https://freeservicelink.in/',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2A55C3)),
            ),
          ],
        ),
      ),
    );
  }
}

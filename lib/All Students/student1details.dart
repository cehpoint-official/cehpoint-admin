import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class student1details extends StatelessWidget {
  const student1details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Student details',
            style: TextStyle(color: Colors.black87, fontSize: 18.sp),
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
            Navigator.pushNamed(context, 'All_Students');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.h, bottom: 36.h, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Student 1',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Image.asset('Assets/bigdot.png'),
                Text(
                  'Are you interested in Cyber Future Course?',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset('Assets/answer_arrow.png'),
                Text(
                  'Yes',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset('Assets/bigdot.png'),
                Text(
                  'Do your parents support you?',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset('Assets/answer_arrow.png'),
                Text(
                  'Yes',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset('Assets/bigdot.png'),
                Text(
                  'Are you comfortable with online classes?',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Image.asset('Assets/answer_arrow.png'),
                Text(
                  'Yes',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name - Asit Jana',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Guardian Name  - Papa Jana',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Phone Number - 9155965403',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Email ID - asit@gmail.com',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  ' Address - Jautia ,South 24 pargona',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Your Learning Interest - Cyber Security ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Your Future Goals - Get a good job',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'How did you hear about us - Friend',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

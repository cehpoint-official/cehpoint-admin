import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Addfreeservice1 extends StatelessWidget {
  const Addfreeservice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'Add free service',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 18.sp,
            ),
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
            Navigator.pushNamed(context, 'Addfreeservice');
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
                Image.asset('Assets/pencil.png')
              ],
            ),
            SizedBox(
              height: 21.h,
            ),
            TextField(
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff2A55C3)),
            )
          ],
        ),
      ),
    );
  }
}

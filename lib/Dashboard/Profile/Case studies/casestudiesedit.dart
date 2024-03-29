import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class casestudiesedit extends StatelessWidget {
  const casestudiesedit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar( centerTitle: true,
        title: Text(
          'Case studies',
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
            Navigator.pushNamed(context, 'Casestudies');
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

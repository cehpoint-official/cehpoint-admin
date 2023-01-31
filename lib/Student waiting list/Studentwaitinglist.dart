// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Student_waiting_list extends StatelessWidget {
  const Student_waiting_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Student waiting list',
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
            Navigator.pushNamed(context, 'Dashboard');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Asit Jana',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Nigar Sultana',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 170.w,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Container(
                margin: EdgeInsets.only(left: 10.w),
                child: Image.asset(
                  'Assets/Student_waiting_list.png',
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Dibiyajoti Pal',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 174.w,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Student_details');
                  },
                  icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}

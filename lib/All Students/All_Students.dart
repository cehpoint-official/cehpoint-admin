// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class All_Students extends StatelessWidget {
  const All_Students({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 80.w),
          child: Text(
            'All_Students',
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
        padding: EdgeInsets.only(top: 50.h, left: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Batch 1',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            SizedBox(height: 30.h),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 1',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 2',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 3',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Batch 2',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            SizedBox(height: 30.h),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 4',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.w,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 5',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
            SizedBox(
              height: 20.h,
            ),
            Row(children: [
              Image.asset(
                'Assets/Student_waiting_list.png',
              ),
              SizedBox(
                width: 20.w,
              ),
              Text(
                'Student 6',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.sp),
              ),
              SizedBox(
                width: 200.w,
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
            ]),
          ],
        ),
      ),
    );
  }
}

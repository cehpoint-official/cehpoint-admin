import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Employeedetails extends StatelessWidget {
  const Employeedetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Employee details',
          style: TextStyle(color: Colors.black87, fontSize: 18.sp),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'total_employees');
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 54.h, left: 26.w),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset('Assets/total_employees.png'),
                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Employee 1',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 19.h, left: 54.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'TASK TITLE',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6C6969)),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      'WordPress theme setup ',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'TASK NO.',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6C6969)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      'Task 10',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'TASK COMPLETE DATE ',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6C6969)),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(
                      '10.01.2023',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Text(
                      'TASK DETAILS',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff6C6969)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '1.Choose a good theme for education site.',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Text(
                      '2.Install WordPress',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Text(
                      '3.Setup this theme',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff000000)),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class total_employees extends StatelessWidget {
  const total_employees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60.w),
          child: Text(
            'All Employees',
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
        actions: [
          InkWell(
            child: Image.asset('Assets/totalemployees.png'),
            // onTap: () => ,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Employee 1',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Divider(
            height: 30.h,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Employee 2',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Divider(
            height: 30.h,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Employee 3',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Divider(
            height: 30.h,
            thickness: 1,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('Assets/total_employees.png'),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      'Employee 3',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black87,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 43.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NAME : Suraj Mitra',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Ph No. : +91 6296704833',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'EMAIL ID : suraj@gmail.com',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color.fromRGBO(0, 0, 0, 0.3),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

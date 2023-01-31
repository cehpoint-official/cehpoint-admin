// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Completed_projects extends StatelessWidget {
  var appBarHeight = AppBar().preferredSize.height;

  Completed_projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 40.w),
          child: Text(
            'Completed projects',
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
          PopupMenuButton(
              offset: Offset(0.0, appBarHeight),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.0.r),
                  bottomRight: Radius.circular(8.0.r),
                  topLeft: Radius.circular(8.0.r),
                  topRight: Radius.circular(8.0.r),
                ),
              ),
              padding: const EdgeInsets.all(15),
              itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      child: Text(
                        'All',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'This week',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'This month',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'This year',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 8.sp),
                      ),
                    ),
                  ],
              child: Image.asset(
                'Assets/Completed_projects.png',
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 80.h),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project 1',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'completed on 10.01.2023',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 129.w,
                ),
                SizedBox(
                    height: 20.h,
                    width: 110.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                            context, 'Completedprojectsdetails');
                      },
                      child: Center(
                          child: Text(
                        'View details',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Project 2',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'completed on 15.01.2023',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.black87,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 129.w,
                ),
                SizedBox(
                    height: 20.h,
                    width: 110.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffD4C00B),
                      ),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'View details',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: const Color(
                              0xffFFFFFF,
                            ),
                            fontWeight: FontWeight.w700),
                      )),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

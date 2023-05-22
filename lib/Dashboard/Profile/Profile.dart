// ignore: file_names
import 'package:cehpoint_admin/Dashboard/Profile/Add%20gift/Addgift.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Case%20studies/Casestudies.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Help/Help.dart';
import 'package:cehpoint_admin/Dashboard/Profile/Payment/Payment.dart';
import 'package:cehpoint_admin/Dashboard/Profile/edit.dart';
import 'package:cehpoint_admin/Dashboard/Profile/free%20service/Addfreeservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => edit(),
                ),
              );
            },
            child: Row(
              children: [
                Image.asset('Assets/camera.png'),
                Padding(
                  padding: EdgeInsets.only(right: 30.w, left: 3.w),
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000)),
                  ),
                )
              ],
            ),
          )
        ],
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
        padding: EdgeInsets.only(top: 36.h, left: 35.w, right: 35.w),
        child: Column(
          children: [
            Center(child: Image.asset('Assets/bigprofile.png')),
            SizedBox(
              height: 13.h,
            ),
            Text(
              'Hi Jit',
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 70.h,
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //               width: 33.w,
            //               height: 33.h,
            //               decoration: const BoxDecoration(
            //                   color: Color(0xffD4C00B), shape: BoxShape.circle),
            //               child: Image.asset('Assets/profile1.png')),
            //           SizedBox(
            //             width: 26.w,
            //           ),
            //           Text(
            //             'Edit Profile',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w400, fontSize: 16.sp),
            //           ),
            //         ],
            //       ),
            //       Image.asset('Assets/profileall.png')
            //     ],
            //   ),
            // ),
            // SizedBox(height: 14.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Addgift(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile2.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Add gift',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Addfreeservice(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile3.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Add free service',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Casestudies(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile4.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Case studies',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Payment(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile5.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Payments',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
            // InkWell(
            //   onTap: () {},
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //               width: 33.w,
            //               height: 33.h,
            //               decoration: const BoxDecoration(
            //                   color: Color(0xffD4C00B), shape: BoxShape.circle),
            //               child: Image.asset('Assets/profile6.png')),
            //           SizedBox(
            //             width: 26.w,
            //           ),
            //           Text(
            //             'Settings',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w400, fontSize: 16.sp),
            //           )
            //         ],
            //       ),
            //       Image.asset('Assets/profileall.png')
            //     ],
            //   ),
            // ),
            // SizedBox(height: 14.h),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile7.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Help',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 33.w,
                          height: 33.h,
                          decoration: const BoxDecoration(
                              color: Color(0xffD4C00B), shape: BoxShape.circle),
                          child: Image.asset('Assets/profile8.png')),
                      SizedBox(
                        width: 26.w,
                      ),
                      Text(
                        'Log-Out',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 16.sp),
                      )
                    ],
                  ),
                  Image.asset('Assets/profileall.png')
                ],
              ),
            ),
            SizedBox(height: 14.h),
          ],
        ),
      ),
    );
  }
}
